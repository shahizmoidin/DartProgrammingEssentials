void main() {
  Animal animal = Cat();

  switch (animal) {
    case Human():
      print("do anything");
    case Dog():
      print("do dog");
    case Cat():
      print("catt");
  }
}

sealed class Animal {}

class Human implements Animal {}

class Dog implements Animal {}

class Cat extends Animal {}

final class Work {}

//allows only to extends no implemntaiton
base class Sleep {}

interface class Look {}

//true interface
abstract interface class Monkey {}

mixin class Miixme {}
