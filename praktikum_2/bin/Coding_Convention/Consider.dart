class LoginResult {
  bool isSuccess;

  LoginResult(this.isSuccess);
}

class Store {
  bool closeStore;

  Store(this.closeStore);
}

class Garfield {
  void eat() {
    print('Hallo! Selamat datang kembali');
  }
}

void main() {
  LoginResult login = LoginResult(true);
  Store store = Store(true);
  Garfield garfield = Garfield();

  // Good example
  // "If login is successful ..."
  if (login.isSuccess) {
    // "Hello! Welcome back."
    garfield.eat();
  }

  // Better example
  // If you want to close the store
  if (store.closeStore) {
    // Implement logic for closing the store
  }
}
