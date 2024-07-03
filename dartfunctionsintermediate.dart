void main() {
  //
  final stuff = mystuf();
  stuff();

  //anymous function without any name
  () {
    print("i am annoymous");
  }();

  print(printstuff());
}

//returning a function
Function mystuf() {
  return () {
    print("dart is easy");
  };
}

//fat arrow function
//used when there is only statement
String printstuff() => "shahiz";
