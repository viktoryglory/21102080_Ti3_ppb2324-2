abstract class Animal {}

abstract class Mammal extends Animal {}

mixin Flyable {}

mixin Walkable {
  void walk() {
    print('Walking...');
  }
}

class Cat extends Mammal with Walkable {
  String color;

  Cat(String name, this.color) : super();

  void meow() {
    print('Meow!');
  }
}

void main() {
  var cat = Cat('kardun', 'pink');
  cat.walk();
  cat.meow();
}
