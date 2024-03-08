import 'hewan.dart';

void main() {
  var kucing = hewan('udin', 2, 3.2);
  kucing.makan();
  kucing.tidur();
  print(kucing.berat);
}
