void main() {

  String nama = "kawa";
  int jamKerja = 20;
  double upahPerJam = 25000;
  bool statusTetap = true; 
  
  double gajiKotor = jamKerja * upahPerJam;

  double pajak;
  if (statusTetap) {
    pajak = 0.10 * gajiKotor; 
  } else {
    pajak = 0.05 * gajiKotor; {} 
  }
  double gajiBersih = gajiKotor - pajak;
  print("=== Slip Gaji Karyawan ===");
  print("Nama Karyawan : $nama");
  print("Jam Kerja     : $jamKerja jam/minggu");
  print("Upah per Jam  : Rp $upahPerJam");
  print("Status        : ${statusTetap ? "Tetap" : "Kontrak" }");
  print("Gaji Kotor    : Rp $gajiKotor");
  print("Pajak         : Rp $pajak");
  print("Gaji Bersih   : Rp $gajiBersih");
}