import 'package:flutter/material.dart';
import 'package:kelompok_3/utils/app_routes.dart';

class VerifyCodePage extends StatefulWidget {
  final String email;

  const VerifyCodePage({
    super.key,
    required this.email,
  });

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  // Controllers untuk 4 input OTP
  final TextEditingController code1 = TextEditingController();
  final TextEditingController code2 = TextEditingController();
  final TextEditingController code3 = TextEditingController();
  final TextEditingController code4 = TextEditingController();

  // Focus nodes
  final FocusNode focus1 = FocusNode();
  final FocusNode focus2 = FocusNode();
  final FocusNode focus3 = FocusNode();
  final FocusNode focus4 = FocusNode();

  @override
  void dispose() {
    code1.dispose();
    code2.dispose();
    code3.dispose();
    code4.dispose();
    focus1.dispose();
    focus2.dispose();
    focus3.dispose();
    focus4.dispose();
    super.dispose();
  }

  void _verifyCode() {
    String fullCode = code1.text + code2.text + code3.text + code4.text;
    
    if (fullCode.length == 4) {
      Navigator.pushNamed(
        context,
        AppRoutes.newPassword,
        arguments: {'email': widget.email},
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Masukkan kode verifikasi lengkap')),
      );
    }
  }

  Widget _buildCodeInput(
    TextEditingController controller,
    FocusNode currentFocus,
    FocusNode? nextFocus,
  ) {
    return SizedBox(
      width: 60,
      height: 60,
      child: TextField(
        controller: controller,
        focusNode: currentFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFF142B6F), width: 2),
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty && nextFocus != null) {
            nextFocus.requestFocus();
          } else if (value.isEmpty && currentFocus != focus1) {
            // Auto back jika dihapus
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              const Text(
                'Verifikasi Kode',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              
              // Subtitle dengan email
              Text(
                'Masukkan kode 4 digit yang dikirim ke\n${widget.email}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 40),

              // OTP Input Fields
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCodeInput(code1, focus1, focus2),
                  _buildCodeInput(code2, focus2, focus3),
                  _buildCodeInput(code3, focus3, focus4),
                  _buildCodeInput(code4, focus4, null),
                ],
              ),
              const SizedBox(height: 40),

              // Verify Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF142B6F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: _verifyCode,
                  child: const Text(
                    'Verifikasi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Resend Code
              Center(
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Kode verifikasi dikirim ulang')),
                    );
                  },
                  child: const Text(
                    'Kirim Ulang Kode',
                    style: TextStyle(
                      color: Color(0xFF142B6F),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}