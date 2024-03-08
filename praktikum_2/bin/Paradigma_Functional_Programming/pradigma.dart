int sum(int angka1, int angka2) {
  return angka1 + angka2;
}

int fibonacci(n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void main() {
  print('Hasil penjumlahan: ${sum(3, 5)}');

  print('Deret Fibonacci: ');
  for (int i = 0; i < 10; i++) {
    print(fibonacci(i));
  }
}
