import 'hewan.dart';
import 'flyable.dart';

class Burung extends hewan implements flyable {
  String warna;

  Burung(String nama, int umur, double berat, this.warna)
      : super(nama, umur, berat);

  @override
  void fly() {
    print('$nama is flying');
  }
}
