import 'dart:io';

void main() {
  final file = File('assets/icon/app_icon.png');
  print(file.existsSync() ? "File ditemukan ✅" : "File TIDAK ditemukan ❌");
}
