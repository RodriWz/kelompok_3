import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';

class OtpService {
  static final _firestore = FirebaseFirestore.instance;

  static String _generateOtp() {
    final random = Random();
    return (1000 + random.nextInt(9000)).toString();
  }

  static Future<void> sendOtp(String email) async {
    final otp = _generateOtp();

    // SIMPAN OTP KE FIRESTORE
    await _firestore.collection('otp_codes').doc(email).set({
      'otp': otp,
      'createdAt': FieldValue.serverTimestamp(),
    });

    // KIRIM OTP VIA EMAIL (EMAILJS)
    await http.post(
      Uri.parse('https://api.emailjs.com/api/v1.0/email/send'),
      headers: {'Content-Type': 'application/json'},
      body: '''
      {
        "service_id": "12345",
        "template_id": "template_y165n2s",
        "user_id": "NZC_iA1qoKl03q3ZD",
        "template_params": {
          "to_email": "$email",
          "otp_code": "$otp"
        }
      }
      ''',
    );
  }
}
