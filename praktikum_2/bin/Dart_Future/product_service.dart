import 'dart:async';

Future<String> getProduct() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Matcha Latte';
  });
}
