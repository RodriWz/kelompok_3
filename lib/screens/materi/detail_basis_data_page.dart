import 'package:flutter/material.dart';

class DetailBasisDataPage extends StatelessWidget {
  const DetailBasisDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FB),

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),

            // ===== CARD CONTENT =====
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
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
                            'Basis Data',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      // ===== ISI =====
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Basis data (database) adalah kumpulan data yang disusun secara sistematis dan terorganisir sehingga memudahkan proses penyimpanan, pengolahan, pencarian, dan pengelolaan informasi. Data dalam basis data dapat berupa teks, angka, gambar, atau jenis data lainnya yang saling berhubungan.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  height: 1.6,
                                ),
                              ),

                              SizedBox(height: 16),

                              Text(
                                'Fungsi Utama Basis Data',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),

                              SizedBox(height: 8),

                              Text(
                                '1. Menyimpan informasi secara efisien.\n'
                                '2. Memudahkan pengambilan dan pencarian data.\n'
                                '3. Menjaga konsistensi, keamanan, dan integritas data.\n'
                                '4. Mendukung sistem dan aplikasi yang digunakan oleh banyak pengguna.',
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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),

                              SizedBox(height: 8),

                              Text(
                                '• Sistem absensi siswa di sekolah.\n'
                                '• Aplikasi toko online yang menyimpan data produk dan pelanggan.\n'
                                '• Media sosial yang menyimpan postingan, komentar, dan profil pengguna.',
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
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),

                              SizedBox(height: 8),

                              Text(
                                'Basis data sangat penting dalam dunia digital karena memungkinkan informasi disimpan dengan rapi dan dapat diakses dengan cepat dan aman kapan saja dibutuhkan.',
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

                      const SizedBox(height: 20),

                      // ===== ILUSTRASI =====
                      Center(
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFF0E1F4D),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Icon(
                            Icons.storage,
                            color: Colors.white,
                            size: 48,
                          ),
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
