void main(List<String> args) {
  List<String> nama = ['Faradina', 'Akbar', 'Hamdan', 'Ajwan', 'Kawa'];
  for (var i = 0; i < nama.length; i++) {
    print(nama[i]);
  }
  nama.forEach((item) => print(item));
}