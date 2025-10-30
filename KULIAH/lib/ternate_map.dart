import 'dart:io';

void tampilkanWisata() {
  while (true) {
    print("\n--- Daftar Wisata ---");
    print("- Batu Angus");
    print("- Pantai Sulamadaha");
    print("- Danau Tolire");
    print("Ketik 1: untuk kembali");

    stdout.write("Pilih: ");
    String? input = stdin.readLineSync();

    if (input == "1") break;
  }
}

void tampilkanKuliner() {
  while (true) {
    print("\n--- Daftar Kuliner ---");
    print("- Gohu Ikan");
    print("- Pisang Mulu Bebek");
    print("- Popeda");
    print("Ketik 1: untuk kembali");

    stdout.write("Pilih: ");
    String? input = stdin.readLineSync();

    if (input == "1") break;
  }
}

void tampilkanEvent() {
  while (true) {
    print("\n--- Event Budaya ---");
    print("- Festival Kora-Kora");
    print("- Legu Gam");
    print("- Festival Danau Tolire");
    print("Ketik 1: untuk kembali");

    stdout.write("Pilih: ");
    String? input = stdin.readLineSync();

    if (input == "1") break;
  }
}
