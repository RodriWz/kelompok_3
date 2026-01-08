import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6F9),
      body: Column(
        children: [
          // ===== HEADER =====
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 40),
            decoration: const BoxDecoration(
              color: Color(0xFF142B6F),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        debugPrint('Icon sekolah diklik');
                      },
                      icon: const Icon(Icons.school, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {
                        debugPrint('Notifikasi diklik');
                      },
                      icon: const Icon(Icons.notifications_none, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Selamat Datang',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Fulan',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),

          // ===== SEARCH =====
          Transform.translate(
            offset: const Offset(0, -25),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    debugPrint('Search diklik');
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    alignment: Alignment.centerLeft,
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Cari',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(Icons.close, size: 18, color: Colors.grey),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ===== CONTENT =====
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Kategori',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.view_list),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // ===== KATEGORI BUTTON =====
                  Row(
                    children: [
                      KategoriButton(
                        text: 'X',
                        onPressed: () {
                          debugPrint('Kategori X diklik');
                        },
                      ),
                      const SizedBox(width: 12),
                      KategoriButton(
                        text: 'XI',
                        onPressed: () {
                          debugPrint('Kategori XI diklik');
                        },
                      ),
                      const SizedBox(width: 12),
                      KategoriButton(
                        text: 'XII',
                        onPressed: () {
                          debugPrint('Kategori XII diklik');
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),
                  const Divider(),
                  const SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'New',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // ===== CARD =====
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('Card New diklik');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: Colors.black87,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Container(
                      height: 140,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // ===== BOTTOM NAV =====
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                debugPrint('Chat diklik');
              },
              icon: const Icon(Icons.chat_bubble_outline),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('Home diklik');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8EA0FF),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(12),
                elevation: 0,
              ),
              child: const Icon(Icons.home, color: Colors.black),
            ),
            IconButton(
              onPressed: () {
                debugPrint('Profile diklik');
              },
              icon: const Icon(Icons.person_outline),
            ),
          ],
        ),
      ),
    );
  }
}

// ===== KATEGORI BUTTON =====
class KategoriButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const KategoriButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black87,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
