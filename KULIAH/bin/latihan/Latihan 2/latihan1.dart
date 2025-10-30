import 'dart:io';

void main() {
  stdout.write("Masukkan Nilai : ");
  int nilaiMahasiswa = int.parse(stdin.readLineSync()!);
  if (nilaiMahasiswa > 90) {
    print("nilai A");
  } else if (nilaiMahasiswa > 80) {
    print("nilai B");
  } else if (nilaiMahasiswa > 70) {
    print("nilai C");
  } else if (nilaiMahasiswa > 60) {
    print("nilai D");
  } else {
    print("nilai E");
  }
}
