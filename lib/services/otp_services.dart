import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';

class OtpService {
  static final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  // ================= GENERATE OTP =================
  static String _generateOtp() {
    return (1000 + Random().nextInt(9000)).toString();
  }

  // ================= SEND OTP =================
  static Future<void> sendOtp(String email) async {
    print('=== SEND OTP START ===');
    print('EMAIL: $email');

    final otp = _generateOtp();
    print('OTP GENERATED: $otp');

    final response = await http
        .post(
          Uri.parse('https://api.emailjs.com/api/v1.0/email/send'),
          headers: {
            'origin': 'http://localhost',
            'Content-Type': 'application/json',
          },
          body: jsonEncode({
            "service_id": "service_12345", // GANTI SESUAI EMAILJS
            "template_id": "template_y165n2s",
            "user_id": "NZC_iA1qoKl03q3ZD", // PUBLIC KEY
            "template_params": {
              "to_email": email,
              "otp_code": otp,
            }
          }),
        )
        .timeout(
          const Duration(seconds: 15),
          onTimeout: () {
            print('❌ EMAILJS TIMEOUT');
            throw Exception('EmailJS timeout');
          },
        );

    print('EMAILJS STATUS: ${response.statusCode}');
    print('EMAILJS BODY: ${response.body}');

    if (response.statusCode != 200) {
      throw Exception('EmailJS failed');
    }

    // SIMPAN OTP KE FIRESTORE
    await _firestore.collection('otp_codes').doc(email).set({
      'otp': otp,
      'createdAt': FieldValue.serverTimestamp(),
    });

    print('OTP SAVED TO FIRESTORE');
    print('=== SEND OTP SUCCESS ===');
  }

  // ================= VERIFY OTP =================
  static Future<bool> verifyOtp(
    String email,
    String inputOtp,
  ) async {
    final doc =
        await _firestore.collection('otp_codes').doc(email).get();

    if (!doc.exists) return false;

    final data = doc.data()!;
    final createdAt =
        (data['createdAt'] as Timestamp).toDate();

    // OTP EXPIRED 5 MENIT
    if (DateTime.now().difference(createdAt).inMinutes > 5) {
      return false;
    }

    return data['otp'] == inputOtp;
  }

  // ================= CLEAR OTP =================
  static Future<void> clearOtp(String email) async {
    await _firestore.collection('otp_codes').doc(email).delete();
  }
}
