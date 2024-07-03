void main() {
  print(Constants.greeting);
  print(Constants.bye);
  print(Constants.givemesunshine());

  Vehicle v = Vehicle();
  v.noOfTyre = 50;

  Car c = Car();
  Bus b = Bus();

  b.makemoney(50);
}

class Constants {
  Constants() {
    print("will i be called?");
  }
  static String greeting = "heelooo boss";
  static String bye = "Byeee";

  static String givemesunshine() {
    return "take";
  }
}

//inheritance
//multiple inheritance is not supported

class Vehicle {
  int noOfTyre = 4;

  void makemoney(int money) {
    money += 10;
    print(money);
  }
}

class Car extends Vehicle {
  String nameOfCar = "wagonar";

  @override
  void makemoney(int money) {
    money += 20;
    print(money);
    super.makemoney(money);
  }
}

class Bus extends Vehicle {
  String nameOfCar = "wagonar";
}

//interface
class Other extends Car implements Vehicle {
  @override
  int noOftyre = 6;
  @override
  void makemoney(int money) {}
}

//abstract class
abstract class Petrol {
  void calulatePrice();
}

class Calculate extends Petrol {
  void calulatePrice() {}
}
/*
   1.polymorphism
   2.abstraction
   3.inheritance
   4.encapsulation
   
   */
