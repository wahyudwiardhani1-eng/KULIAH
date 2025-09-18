import 'dart:io';

void main() {
  print("1. Penjumlahan");
  print("2. Pengurangan");
  print("3. Perkalian");
  print("4. Pembagian");
  stdout.write("Pilih operasi (1-4): ");
  int pilihan = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan angka pertama: ");
  double a = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan angka kedua: ");
  double b = double.parse(stdin.readLineSync()!);
  switch (pilihan) {
    case 1:
      print("Hasil penjumlahan = ${a + b}");
      break;
    case 2:
      print("Hasil pengurangan = ${a - b}");
      break;
    case 3:
      print("Hasil perkalian = ${a * b}");
      break;
    case 4:
      if (b != 0) {
        print("Hasil pembagian = ${a / b}");
      } else {
        print("tidak bisa dibagi dengan nol");
      }
      break;
    default:
      print("Pilihan tidak valid");
  }
}