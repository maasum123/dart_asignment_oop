// Define an abstract class (interface) for Playable items
abstract class Playable {
  void play();
}

// Base class representing a generic item
class Item {
  String name;

  Item(this.name);

  void displayInfo() {
    print('Item: $name');
  }
}

// Derived class Guitar that implements the Playable interface
class Guitar extends Item implements Playable {
  int numberOfStrings;

  Guitar(String name, this.numberOfStrings) : super(name);

  @override
  void play() {
    print('Playing the $name guitar with $numberOfStrings strings.');
  }
}

// Derived class Dog that overrides the makeSound method
class Animal {
  void makeSound() {
    print('Animal makes a generic sound.');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog barks: Woof woof!');
  }
}

// Read data from a file (mocked here) and create instances
void main() {
  final guitar = Guitar('Acoustic', 6);
  guitar.displayInfo();
  guitar.play();

  final dog = Dog();
  dog.makeSound();
}
