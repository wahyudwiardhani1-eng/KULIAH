import'dart:io';
void main(){
  stdout.write("masukkan panjang :");
  int panjang = int.parse(stdin.readLineSync()!);
  print(panjang);
  stdout.write("masukkan lebar :");
  int lebar = int.parse(stdin.readLineSync()!);
  print(lebar);
  stdout.write("masukkan luas : ");
  int luas = ( panjang * lebar);
  print(luas);
  stdout.write("masukkan keliling : ");
  int keliling = (2 *(panjang * lebar));
  print(keliling);
}