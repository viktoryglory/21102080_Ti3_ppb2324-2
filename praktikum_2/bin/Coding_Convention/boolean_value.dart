class Partnership {
  bool isPartnership;

  Partnership(this.isPartnership);
}

void main() {
  Partnership? partnership;
  // ...

  if (partnership?.isPartnership ?? false) {
    print('Sudah bekerja sama.');
  } else {
    print('Belum bekerja sama dan atau data partnership tidak tersedia.');
  }
}
