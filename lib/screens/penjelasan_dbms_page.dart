import 'package:flutter/material.dart';

class DetailDBMSPage extends StatelessWidget {
  const DetailDBMSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FB),

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),

            // ===== CARD UTAMA =====
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF142B6F),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ===== HEADER =====
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'DBMS',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 16),

                      // ===== KONTEN SCROLL =====
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'DBMS (Database Management System) adalah perangkat lunak yang digunakan untuk membuat, mengelola, dan mengakses basis data secara efisien. DBMS memudahkan pengguna dalam menyimpan, mengubah, menghapus, dan mengambil data tanpa harus memahami struktur database secara mendalam.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  height: 1.6,
                                ),
                              ),

                              SizedBox(height: 16),

                              Text(
                                'Fungsi Utama DBMS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 8),

                              Text(
                                '1. Mengelola data secara efisien dan sistematis.\n'
                                '2. Memudahkan pencarian, penambahan, dan penghapusan data.\n'
                                '3. Menjaga integritas, keamanan, dan konsistensi data.\n'
                                '4. Mendukung akses data oleh banyak pengguna secara bersamaan.\n'
                                '5. Menyediakan fitur backup dan pemulihan data.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  height: 1.6,
                                ),
                              ),

                              SizedBox(height: 16),

                              Text(
                                'Contoh Penggunaan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 8),

                              Text(
                                '• Sistem informasi akademik di kampus.\n'
                                '• Aplikasi perbankan untuk menyimpan data transaksi.\n'
                                '• E-commerce yang menyimpan data produk dan pelanggan.\n'
                                '• Aplikasi kesehatan yang mencatat riwayat pasien.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  height: 1.6,
                                ),
                              ),

                              SizedBox(height: 16),

                              Text(
                                'Kesimpulan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 8),

                              Text(
                                'DBMS sangat penting dalam sistem informasi modern karena memungkinkan data dikelola secara terstruktur, aman, dan mudah diakses oleh berbagai aplikasi dan pengguna.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  height: 1.6,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(height: 16),

                      // ===== ILUSTRASI DATABASE =====
                      Container(
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xFF0E1F4D),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Icon(
                          Icons.storage,
                          color: Colors.white,
                          size: 56,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // ===== BOTTOM NAV =====
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 8),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.chat_bubble_outline),
              onPressed: () {},
            ),
            Container(
              padding: const EdgeInsets.all(14),
              decoration: const BoxDecoration(
                color: Color(0xFF8EA0FF),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.home, color: Colors.black),
            ),
            IconButton(
              icon: const Icon(Icons.person_outline),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
