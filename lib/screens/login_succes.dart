import 'package:flutter/material.dart';
import 'package:kelompok_3/screens/home_page.dart';

class CongratsEduSyncPage extends StatelessWidget {
  const CongratsEduSyncPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF142B6F),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const Spacer(),

              // ===== CENTER CONTENT =====
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Image(
                            image: AssetImage('assets/icon/app_icon1.png'),
                            height: 150,
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Congrats!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF2BFF4A),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      'Your profile is ready to use',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // ===== BUTTON =====
              Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Center(
                  child: SizedBox(
                    width: 260,
                    height: 48,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 4,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HomePage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Go To Homepage',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
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
