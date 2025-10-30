abstract class Transportasi {
  String id, nama;
  double _tarifDasar; //privat konsep opp enkapsulasi
  int kapasitas;

  Transportasi(this.id, this.nama, this._tarifDasar, this.kapasitas);

  double hitungTarif(int jumlahPenumpang);

  double get tarifDasar => _tarifDasar;
  void tampilInfo() {
    print("Id: $id");
    print("Nama: $nama");
    print("Tarif Dasar: $tarifDasar");
    print("Kapasitas: $kapasitas");
  }
}

// konsep pewarisan/inhertiance dalam oop
class Taksi extends Transportasi {
  double jarak;

  Taksi(super.id, super.nama, super.tarifDasar, super.kapasitas, this.jarak);

  // konsep polymorpish dalam oop
  @override
  double hitungTarif(int jumlahPenumpang) => tarifDasar * jarak;

  @override
  void tampilInfo() {
    super.tampilInfo();
    print("Jarak: $jarak");
  }
}

class Bus extends Transportasi {
  bool adaWifi;

  Bus(super.id, super.nama, super.tarifDasar, super.kapasitas, this.adaWifi);

  // konsep polymorpish dalam oop
  @override
  double hitungTarif(int jumlahPenumpang) =>
      (tarifDasar * jumlahPenumpang) + (adaWifi ? 5000 : 0);

  @override
  void tampilInfo() {
    super.tampilInfo();
    print("Ada Wifi?: $adaWifi");
  }
}

class Pesawat extends Transportasi {
  String kelas;

  Pesawat(super.id, super.nama, super.tarifDasar, super.kapasitas, this.kelas);

  // konsep polymorpish dalam oop
  @override
  double hitungTarif(int jumlahPenumpang) =>
      tarifDasar * jumlahPenumpang * (kelas == "Bisnis" ? 1.5 : 1.0);

  @override
  void tampilInfo() {
    super.tampilInfo();
    print("Kelas: $kelas");
  }
}

class Pemesanan {
  String idPemesanan, namaPelanggan;
  Transportasi transportasi;
  int jumlahPenumpang;
  double totalTarif;

  Pemesanan(
    this.idPemesanan,
    this.namaPelanggan,
    this.transportasi,
    this.jumlahPenumpang,
    this.totalTarif,
  );

  void cetakStruk() {
    print("==== STRUK ===");
    print("Kode Pemesanan: $idPemesanan");
    print("Nama Pemesanan: $namaPelanggan");
    print("Transportasi: ${transportasi.nama}");
    print("Jumlah Penumpang: $jumlahPenumpang");
    print("Total Tarif: $totalTarif");
    print("====================\n");
  }

  Map<String, dynamic> toMap() {
    return {
      'idPemesanan': idPemesanan,
      'namaPelanggan': namaPelanggan,
      'transportasi': transportasi.nama,
      'jumlahPenumpang': jumlahPenumpang,
      'totalTarif': totalTarif,
    };
  }
}

Pemesanan buatPemesanan(
  Transportasi t,
  String nama,
  int jumlahPenumpang,
  String idPemesanan,
) {
  double total = t.hitungTarif(jumlahPenumpang);
  return Pemesanan(idPemesanan, nama, t, jumlahPenumpang, total);
}

void tampilSemuaPemesanan(List<Pemesanan> daftar) {
  print("==Daftar Semua Pemesanan ===");
  for (var p in daftar) {
    print(
      "Kode: ${p.idPemesanan} | Nama: ${p.namaPelanggan} | Transportasi ${p.transportasi.nama} | Jumlah Penumpang: ${p.jumlahPenumpang} | Total: ${p.totalTarif}",
    );
  }
}

void main() {
  var taksi = Taksi("T01", "Gocar", 8000, 4, 15);
  var bus = Bus("B01", "Bus Merah", 5000, 20, true);
  var pesawat = Pesawat("P01", "Sriwijaya Air", 1500000, 200, "Bisnis");

  List<Pemesanan> daftarPemesanan = [];

  var p1 = buatPemesanan(taksi, "Ajuwan", 2, "PS1");
  var p2 = buatPemesanan(bus, "Messi", 5, "PS2");
  var p3 = buatPemesanan(pesawat, "Ronaldo", 1, "PS3");

  daftarPemesanan.addAll([p1, p2, p3]);

  p1.cetakStruk();
  p2.cetakStruk();
  p3.cetakStruk();

  tampilSemuaPemesanan(daftarPemesanan);
}
