import 'package:flutter/material.dart';
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
      
      // Menggunakan JurusanPage sebagai halaman awal
      home: SignInPage(), 
      
      // Jika Anda ingin menggunakan routing bernama (opsional):
      // routes: {
      //   '/signin': (context) => const SignInPage(),
      //   '/jurusan': (context) => JurusanPage(),
      // },
      // initialRoute: '/jurusan', 
    );
  }
}

// Catatan: Pastikan kelas SignInPage dan JurusanPage sudah didefinisikan 
// dalam file yang diimpor ('screens/sign_in_page.dart' dan 'screens/jurusan_page.dart').