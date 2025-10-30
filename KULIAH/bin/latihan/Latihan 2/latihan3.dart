import 'dart:io';

void main() {
  Map<String, dynamic> users = {
    'Ajuwan': 123,
    'akbar': 1,
    'alun': 2,
    'dewa': 3,
    'dankos': 123,
  };

  stdout.write("Masukkan username : ");
  String? a = stdin.readLineSync();

  stdout.write("Masukkan pasword : ");
  String? b = stdin.readLineSync();

  if (users.containsKey(a) && users[a] == b) {
    print("berhasil login");
  } else {
    print("Usermae dan Pasword salah");
  }
}
