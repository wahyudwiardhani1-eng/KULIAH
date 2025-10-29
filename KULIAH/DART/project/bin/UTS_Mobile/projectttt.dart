
abstract class Transportasi { //class induk
  String id;
  String nama;
  double _tarifDasar;
  int kapasitas;

  Transportasi(this.id, this.nama, this._tarifDasar, this.kapasitas);

  double get tarifDasar => _tarifDasar;

  double hitungTarif(int jumlahPenumpang);

  void tampilInfo() {
    print("ID: $id");
    print("Nama: $nama");
    print("Tarif Dasar: $_tarifDasar");
    print("Kapasitas: $kapasitas");
  }
}

class Taksi extends Transportasi { //class anak
  double jarak; // dalam kilometer

  Taksi(String id, String nama, double tarifDasar, int kapasitas, this.jarak)
    : super(id, nama, tarifDasar, kapasitas);

  @override
  double hitungTarif(int jumlahPenumpang) {
    return tarifDasar * jarak;
  }

  @override
  void tampilInfo() {
    super.tampilInfo();
    print("Jarak: $jarak km");
    print("Jenis: Taksi");
  }
}


class Bus extends Transportasi { //class anak
  bool adaWifi;

  Bus(String id, String nama, double tarifDasar, int kapasitas, this.adaWifi)
    : super(id, nama, tarifDasar, kapasitas);

  @override
  double hitungTarif(int jumlahPenumpang) {
    return (tarifDasar * jumlahPenumpang) + (adaWifi ? 5000 : 0);
  }

  @override
  void tampilInfo() {
    super.tampilInfo();
    print("Ada Wifi: ${adaWifi ? 'Ya' : 'Tidak'}");
    print("Jenis: Bus");
  }
}


class Pesawat extends Transportasi { //class anak
  String kelas; // Ekonomi atau Bisnis

  Pesawat(String id, String nama, double tarifDasar, int kapasitas, this.kelas)
    : super(id, nama, tarifDasar, kapasitas);

  @override
  double hitungTarif(int jumlahPenumpang) {
    return tarifDasar * jumlahPenumpang * (kelas == "Bisnis" ? 1.5 : 1.0);
  }

  @override
  void tampilInfo() {
    super.tampilInfo();
    print("Kelas: $kelas");
    print("Jenis: Pesawat");
  }
}

class Pemesanan {
  String idPemesanan;
  String namaPelanggan;
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
    print("\n===== STRUK PEMESANAN SMART RIDE =====");
    print("Kode Pemesanan: $idPemesanan");
    print("Nama Pelanggan: $namaPelanggan");
    print("Transportasi: ${transportasi.nama}");
    print("Jumlah Penumpang: $jumlahPenumpang");
    print("Total Tarif: Rp ${totalTarif.toStringAsFixed(2)}");
    print("======================================\n");
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
  print("\n===== DAFTAR SEMUA PEMESANAN =====");
  for (var p in daftar) {
    print(
      "Kode: ${p.idPemesanan} | Nama: ${p.namaPelanggan} | Transportasi: ${p.transportasi.nama} | Total: Rp ${p.totalTarif.toStringAsFixed(2)}",
    );
  }
  print("==================================\n");
}

void main() {

  var taksi1 = Taksi("T001", "Blue Bird", 7500, 4, 15.0);
  var bus1 = Bus("B001", "TransJakarta", 3000, 40, true);
  var pesawat1 = Pesawat("P001", "Garuda Indonesia", 1500000, 180, "Bisnis");

  List<Pemesanan> daftarPemesanan = [];

  var p1 = buatPemesanan(taksi1, "Kawalero", 2, "PS001");
  var p2 = buatPemesanan(bus1, "Budi", 5, "PS002");
  var p3 = buatPemesanan(pesawat1, "Citra", 2, "PS003");

  daftarPemesanan.addAll([p1, p2, p3]);

  p1.cetakStruk();
  p2.cetakStruk();
  p3.cetakStruk();

  tampilSemuaPemesanan(daftarPemesanan);
}
