//error handling ~/ 0
// buat program untuk  menampilkan menu operasi dan dengan menggunakan file
// void main() {
//   try {
//     int number = 10 ~/ 0;
//     print(number);
//   } catch (e) {
//     print("Terjadi error : $e");
//   }
// }
// try catch (e)
import 'dart:io';

void main() {
  print("1. Penjumlahan");
  print("2. pengurangan");
  print("3. perkalian");
  print("4. pembagian");
  stdout.write("Pilih Operasi(1-4): ");
  int pilihan = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan angka pertama : ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan angka pertama : ");
  double b = double.parse(stdin.readLineSync()!);
  double hasil;

  switch (pilihan) {
    case 1:
      hasil = a + b;
      print("Hasil penjumlahan = $hasil");
      break;
    case 2:
      hasil = a - b;
      print("Hasil pengurangan = $hasil");
      break;
    case 3:
      hasil = a * b;
      print("Hasil perkalian = $hasil");
      break;
    case 4:
      if (a != 0) {
        hasil = a / b;
        print("Hasil pembagian = $hasil");
      } else {
        print("tidak bisa di bagi nol");
      }
      break;
    default:
      print("Pilihan tidak valid!");
  }
}
