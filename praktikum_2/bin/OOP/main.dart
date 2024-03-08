import 'animal.dart';

void main() {
  var kucing = animal('kadrun', 7, 2.3);
  kucing.eat();
  kucing.sleep();
  print(kucing.weight);
}
