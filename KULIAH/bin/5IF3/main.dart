void main() {
  var nama = "Ajuwan Sahmir";
  int usia = 900; // b.bulat
  double berat = 90; // b.pecahan
  num tinggi = 170; // bisa bulat maupun pecahan
  bool isActive = true;

  //cara pemanggilan variabel : print(nama)
  print("pemrograman mobile"); //cara pemanggilan string
  print("nama saya : $nama"); //cara panggil variabel beserta string
  print("usia saya : $usia tahun");
  print("berat saya : $berat kg");
  print("tinggi saya : $tinggi cm");
  print("status mahasiswa : $isActive = Aktif");

  //set adalah kumpulan elemen yang bersifat unik dan tidak berurutan
  Set<String> angka = {"kawa", "man", "alun"};
  print(angka.length);
  print(angka.add("dewa")); // menambahkan
  print(angka.remove("man")); //menghapus
  print(angka.contains("man"));
  angka.clear(); //menghapus semua nilai
  print(
    "konversi type data set ke list : ${angka.toList()}",
  ); // mengubah tipe data ke ist
  print(angka);

  //list adalah struktur daya berurutan yang dapat menyimpan kumpulan nilai/data
  //first, lenght, add, addAll, insert, remove, removAt,
  List namaBuah = ["Apel", "durian", "manggis"];
  print("nama buah : $namaBuah");

  //Map adalah struktur data yang menyimpan pasangan kunci dan nilai(key-value pain)
  Map<String, dynamic> users = {"Ajuwan": 90};
  print(users);
}
