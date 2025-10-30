import 'dart:io';

void main() {
  stdout.write("masukkan panjang :");
  int panjang = int.parse(stdin.readLineSync()!);
  print(panjang);
  stdout.write("masukkan lebar :");
  int lebar = int.parse(stdin.readLineSync()!);
  print(lebar);
  stdout.write("Luas = ");
  int luas = (panjang * lebar);
  print(luas);
  stdout.write("Keliling = ");
  int keliling = (2 * (panjang * lebar));
  print(keliling);
}
