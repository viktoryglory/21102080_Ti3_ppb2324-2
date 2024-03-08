void main() {
  getProduct().then((value) {
    print('You product: $value');
  }).catchError((error) {
    print('Sorry. $error');
  });
  print('Getting your product...');
}

Future<String> getProduct() {
  return Future.delayed(Duration(seconds: 3), () {
    var isProductAvailable = false;
    if (isProductAvailable) {
      return 'Coffee Boba';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}
