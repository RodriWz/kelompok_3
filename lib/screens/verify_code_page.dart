import 'package:flutter/material.dart';
import 'new_password_page.dart';

class VerifyCodePage extends StatefulWidget {
  final String email;
  const VerifyCodePage({super.key, required this.email});

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  final List<TextEditingController> controllers = List.generate(4, (_) => TextEditingController());
  final _formKey = GlobalKey<FormState>();
  int secondsLeft = 30;

  @override
  void initState() {
    super.initState();
    countdown();
  }

  void countdown() async {
    while (secondsLeft > 0) {
      await Future.delayed(const Duration(seconds: 1));
      if (mounted) {
        setState(() {
          secondsLeft--;
        });
      }
    }
  }

  bool allFieldsFilled() {
    return controllers.every((c) => c.text.isNotEmpty);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9EEF6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text("Verification code"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text('kode verifikasi dikirim ke ${widget.email}'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return SizedBox(
                    width: 50,
                    child: TextFormField(
                      controller: controllers[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: const InputDecoration(counterText: ''),
                      validator: (value) {
                        if (value == null || value.isEmpty) return '';
                        return null;
                      },
                    ),
                  );
                }),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF2C46A4)),
                  onPressed: () {
                    if (_formKey.currentState!.validate() && allFieldsFilled()) {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const NewPasswordPage()));
                    }
                  },
                  child: const Text('confirm code'),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '00:${secondsLeft.toString().padLeft(2, '0')}  Resend confirmation code',
                style: const TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
