import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FB),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),

            // ===== SEARCH =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Cari ulasan",
                    border: InputBorder.none,
                    icon: Icon(Icons.menu),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // ===== LIST REVIEW =====
            Expanded(
              child: ListView(
                children: const [
                  ReviewCard(
                    name: "josep",
                    message: "Aplikasinya bagus saya suka sekali",
                    votes: "130k Votes",
                    isAnswered: false,
                  ),
                  ReviewCard(
                    name: "juned",
                    message: "Aplikasinya bagus",
                    votes: "56k Votes",
                    isAnswered: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // ===== FLOATING ADD =====
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF7C83FD),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

      // ===== BOTTOM NAV =====
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: const Color(0xFF7C83FD),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "",
          ),
        ],
      ),
    );
  }
}

// ===== REVIEW CARD =====
class ReviewCard extends StatelessWidget {
  final String name;
  final String message;
  final String votes;
  final bool isAnswered;

  const ReviewCard({
    super.key,
    required this.name,
    required this.message,
    required this.votes,
    required this.isAnswered,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== HEADER =====
            Row(
              children: [
                const CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.blueGrey,
                  child: Icon(Icons.person, size: 18, color: Colors.white),
                ),
                const SizedBox(width: 8),
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // ===== MESSAGE =====
            Text(
              message,
              style: const TextStyle(fontSize: 14),
            ),

            const SizedBox(height: 16),

            // ===== FOOTER =====
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  votes,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                if (isAnswered)
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Color(0xFFE8E9FF),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      "jawab",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF7C83FD),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
