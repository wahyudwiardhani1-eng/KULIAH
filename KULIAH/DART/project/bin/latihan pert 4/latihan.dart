// //menggunakan parameter
// import 'dart:io';

// void sapa(nama) {
//   print("hay nama saya $nama");
// }

// //void tidak mengembalikan nilai
// //fungsi perkalian
// int perkalian(int a, int b) {
//   int hasil = a * b;
//   return hasil;
// }

// int z = 10;
// int a = 10;
import 'dart:io';

int input(String pesan) {
  stdout.write(pesan);
  return int.parse(stdin.readLineSync()!);
}

int perklian(int a, int b) {
  return a * b;
}

void main() {
  // sapa(""); //parameter wajib diisi
  // print("hasil perkalian: ${perkalian(5, 5)}");
  int a1 = input("Masukkan angka pertama: ");
  int a2 = input("Masukkan angka kedua: ");

  int hasil = perklian(a1, a2);

  print("Hasil perkalian: $a1 x $a2 = $hasil");
}