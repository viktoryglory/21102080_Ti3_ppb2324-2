import 'product_service.dart'; // Import file product_service.dart

void main() {
  getProduct().then((product) {
    print('Product: $product');
  });
}
