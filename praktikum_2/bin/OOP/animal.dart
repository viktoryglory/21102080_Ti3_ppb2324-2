class animal {
  String _name = '';
  int _age = 0;
  double _weight = 0;

  animal(this._name, this._age, this._weight);

  //setter
  set name(String value) {
    _name = value;
  }

  //geter
  double get weight => _weight;

  void eat() {
    print('$_name is eating');
    _weight = _weight + 0.2;
  }

  void sleep() {
    print('$_name is sleeping.');
  }

  void poop() {
    print('$_name is pooping.');
    _weight = _weight - 0.1;
  }
}
