import 'package:ternate_map/ternate_map.dart' as ternate_map;
import 'dart:io';

void main() {
  while (true) {
    print("\n=== Ternate Map ===");
    print("1. Lihat daftar wisata");
    print("2. Lihat daftar kuliner");
    print("3. Lihat event budaya");
    print("4. Keluar");

    stdout.write("Masukkan pilihan: ");
    String? pilihan = stdin.readLineSync();

    if (pilihan == "1") {
      ternate_map.tampilkanWisata();
    } else if (pilihan == "2") {
      ternate_map.tampilkanKuliner();
    } else if (pilihan == "3") {
      ternate_map.tampilkanEvent();
    } else if (pilihan == "4") {
      print("\nTerima kasih sudah menggunakan Ternate Map!");
      break;
    } else {
      print("Pilihan tidak valid, coba lagi.");
    }
  }
}
