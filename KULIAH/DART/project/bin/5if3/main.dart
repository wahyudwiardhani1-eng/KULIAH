void main () {
Set <String> angka = {"dankos, ajuan, baron"};
print(angka.length);
print(angka.add("wan"));
print(angka.remove('dankos'));
print(angka.contains("dankos"));
angka.clear();
print("koneversi type data set kelist :${angka.toList()}");
print(angka);
}