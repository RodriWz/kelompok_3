import 'package:flutter/material.dart';
import 'package:kelompok_3/screens/sign_in_page.dart';

class SuccesForm extends StatelessWidget {
  const SuccesForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5C6BC0),
      appBar: AppBar(
        backgroundColor: const Color(0xFF5C6BC0),
        elevation: 0,
        title: const Text(
          "SUCCESS",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Logo / Icon
          Center(
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check_circle,
                size: 70,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 24),

          const Center(
            child: Text(
              "Congrats!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 12),

          const Center(
            child: Text(
              "Your profile is ready to use",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
          ),

          const SizedBox(height: 32),

          // Tombol mirip jurusanButton
          succesButton(
            title: "Go To Homepage",
            icon: Icons.home,
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
            },
          ),
          succesButton(
            title: "Choose Major (Jurusan)",
            icon: Icons.school,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SignInPage()),
              );
            },
          ),
          succesButton(
            title: "Skip for now",
            icon: Icons.skip_next,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget succesButton({
    required String title,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          elevation: 6,
          shadowColor: Colors.black.withOpacity(0.3),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(icon, size: 40, color: const Color(0xFF5C6BC0)),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}