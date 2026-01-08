import 'package:flutter/material.dart';
import 'package:kelompok_3/utils/app_routes.dart';

class CongratsEduSyncPage extends StatelessWidget {
  final String? email; 
  
  const CongratsEduSyncPage({
    super.key,
    this.email,
  });

  @override
  Widget build(BuildContext context) {
    // Ambil email dari arguments jika tidak ada di constructor
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final userEmail = email ?? args?['email'];

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
                    // App Icon
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

                    // Congrats Text
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
                    
                    // Tampilkan email jika ada (optional)
                    if (userEmail != null) ...[
                      Text(
                        userEmail,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF2BFF4A),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 7),
                    ],
                    
                    // Description
                    const Text(
                      'Your profile is ready to use',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
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
                        // Navigate ke home page dengan named routes
                        // pushReplacement agar user tidak bisa back ke congrats page
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.home,
                        );
                      },
                      child: const Text(
                        'Go To Homepage',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
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