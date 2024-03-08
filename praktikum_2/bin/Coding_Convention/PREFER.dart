bool isValid(String username, String password) {
  return username.length >= 5 && password.length >= 8;
}

void main() {
  String username = 'friy1002';
  String password = 'satusampe8';

  if (isValid(username, password)) {
    print('Valid username and password.');
  } else {
    print('Invalid username or password.');
  }
}
