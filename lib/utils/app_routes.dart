import 'package:flutter/material.dart';

// ==================== AUTH SCREENS ====================
import 'package:kelompok_3/screens/auth/sign_in_page.dart';
import 'package:kelompok_3/screens/auth/sign_up_page.dart';
import 'package:kelompok_3/screens/auth/login_succes.dart';
import 'package:kelompok_3/screens/auth/forgot_password_page.dart';
import 'package:kelompok_3/screens/auth/new_password_page.dart';
import 'package:kelompok_3/screens/auth/verify_code_page.dart';

// ==================== HOME SCREENS ====================
import 'package:kelompok_3/screens/home/home_page.dart';
import 'package:kelompok_3/screens/home/menu_page.dart';
import 'package:kelompok_3/screens/home/jurusan_page.dart';
import 'package:kelompok_3/screens/home/notifikasi_page.dart';

// ==================== MATERI SCREENS ====================
import 'package:kelompok_3/screens/materi/basis_data_page.dart';
import 'package:kelompok_3/screens/materi/detail_basis_data_page.dart';
import 'package:kelompok_3/screens/materi/penjelasan_dbms_page.dart';

// ==================== PROFILE SCREENS ====================
import 'package:kelompok_3/screens/profile/profil_page.dart';
import 'package:kelompok_3/screens/profile/edit_profil_page.dart';
import 'package:kelompok_3/screens/profile/contact_page.dart';
import 'package:kelompok_3/screens/profile/ulasan_pengguna_page.dart';

class AppRoutes {
  // ==================== AUTH ROUTES ====================
  static const String signIn = '/sign-in';
  static const String signUp = '/sign-up';
  static const String loginSuccess = '/login-success';
  static const String forgotPassword = '/forgot-password';
  static const String verifyCode = '/verify-code';
  static const String newPassword = '/new-password';

  // ==================== HOME ROUTES ====================
  static const String home = '/home';
  static const String menu = '/menu';
  static const String jurusan = '/jurusan';
  static const String notifikasi = '/notifikasi';

  // ==================== MATERI ROUTES ====================
  static const String basisData = '/basis-data';
  static const String detailBasisData = '/detail-basis-data';
  static const String penjelasanDbms = '/penjelasan-dbms';

  // ==================== PROFILE ROUTES ====================
  static const String profil = '/profil';
  static const String editProfil = '/edit-profil';
  static const String contact = '/contact';
  static const String ulasan = '/ulasan';

  // ==================== ROUTE GENERATOR ====================
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Map<String, dynamic> args =
        (settings.arguments as Map<String, dynamic>?) ?? {};

    switch (settings.name) {

      // ================= AUTH =================
      case signIn:
        return MaterialPageRoute(builder: (_) => SignInPage());

      case signUp:
        return MaterialPageRoute(builder: (_) => SignUpPage());

      case loginSuccess:
        return MaterialPageRoute(
          builder: (_) => CongratsEduSyncPage(
            email: args['email'],
          ),
        );

      case forgotPassword:
        return MaterialPageRoute(builder: (_) => ForgotPasswordPage());

      case verifyCode:
        return MaterialPageRoute(
          builder: (_) => VerifyCodePage(
            email: args['email'] ?? '',
          ),
        );

      case newPassword:
        return MaterialPageRoute(
          builder: (_) => NewPasswordPage(
            email: args['email'] ?? '',
          ),
        );

      // ================= HOME =================
      case home:
        return MaterialPageRoute(builder: (_) => HomePage());

      case menu:
        return MaterialPageRoute(builder: (_) => SidebarMenuPage());

      case jurusan:
        return MaterialPageRoute(builder: (_) => PilihJurusanListPage());

      case notifikasi:
        return MaterialPageRoute(builder: (_) => NotificationPage());

      // ================= MATERI =================
      case basisData:
        return MaterialPageRoute(builder: (_) => BasisDataPage());

      case detailBasisData:
        return MaterialPageRoute(builder: (_) => DetailBasisDataPage());

      case penjelasanDbms:
        return MaterialPageRoute(builder: (_) => DetailDBMSPage());

      // ================= PROFILE =================
      case profil:
        return MaterialPageRoute(builder: (_) => ProfilePage());

      case editProfil:
        return MaterialPageRoute(builder: (_) => EditProfilePage());

      case contact:
        return MaterialPageRoute(builder: (_) => ContactPage());

      case ulasan:
        return MaterialPageRoute(builder: (_) => ReviewPage());

      // ================= DEFAULT =================
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('404'),
              backgroundColor: Colors.red,
            ),
            body: const Center(
              child: Text(
                'Halaman tidak ditemukan',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        );
    }
  }
}
