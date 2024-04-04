//Avoid.dart
void main() {
  String nama = 'Feri Yasin';
  int birthYear = 2002;
  int thisYear = DateTime.now().year;

  printInfo(nama, birthYear, thisYear);
}

void printInfo(String nama, int birthYear, int thisYear) {
  print('Hallo, $nama, berumur ${thisYear - birthYear} tahun.');
}
