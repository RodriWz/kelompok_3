import 'package:flutter/material.dart';
import 'package:kelompok_3/screens/login_succes.dart';

class PilihJurusanListPage extends StatelessWidget {
  const PilihJurusanListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF142B6F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'PILIH JURUSAN ANDA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: ListView(
                  children: const [
                    JurusanTile(title: 'PPLG', asset: 'assets/icon/pplg.png', active: true),
                    JurusanTile(title: 'TKJ', asset: 'assets/icon/tkj.png'),
                    JurusanTile(title: 'AKL', asset: 'assets/icon/akl.png'),
                    JurusanTile(title: 'MPLB', asset: 'assets/icon/mplb.png'),
                    JurusanTile(title: 'APHP', asset: 'assets/icon/aphp.png'),
                    JurusanTile(title: 'PM', asset: 'assets/icon/pm.png'),
                    JurusanTile(title: 'DKV', asset: 'assets/icon/dkv.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class JurusanTile extends StatelessWidget {
  final String title;
  final String asset;
  final bool active;

  const JurusanTile({
    super.key,
    required this.title,
    required this.asset,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: active
          ? () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CongratsEduSyncPage(),
                ),
              );
            }
          : null,
      child: Opacity(
        opacity: active ? 1 : 0.6,
        child: Container(
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade100,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Image.asset(asset, fit: BoxFit.contain),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (!active)
                      const Text(
                        'comming soon...',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                  ],
                ),
              ),
              if (active)
                const Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}
