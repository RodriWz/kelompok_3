import 'package:flutter/material.dart';
import 'package:kelompok_3/screens/basis_data_page.dart';
import 'package:kelompok_3/screens/contact_page.dart';
import 'package:kelompok_3/screens/detail_basis_data_page.dart';
import 'package:kelompok_3/screens/edit_profil_page.dart';
import 'package:kelompok_3/screens/home_page.dart';
import 'package:kelompok_3/screens/menu_page.dart';
import 'package:kelompok_3/screens/notifikasi_page.dart';
import 'package:kelompok_3/screens/penjelasan_dbms_page.dart';
import 'package:kelompok_3/screens/profil_page.dart';
import 'package:kelompok_3/screens/ulasan_pengguna_page.dart';
import 'screens/sign_in_page.dart'; // Pastikan path ini benar
import 'screens/jurusan_page.dart'; // Pastikan path ini benar
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const EduSyncApp());
}

class EduSyncApp extends StatelessWidget {
  const EduSyncApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'EduSync',
      debugShowCheckedModeBanner: false,
      home: DetailDBMSPage(), 
    );
  }
}

