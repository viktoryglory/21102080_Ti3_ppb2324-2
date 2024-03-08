import 'async-await.dart';

void main() {
  getProduct().then((value) {
    print('You product: $value');
  });
  print('Getting your product...');
}
