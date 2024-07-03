void main() {
  final human = Human("sam", 18);
  print(human.name);
  print(human.age);

  //pattern matching
  print("---------pattern matching---");
  final Human(:name, :age) = human;
  print(name);
  print(age);

  List<String> item = ["hi", "hello"];
  switch (item) {
    case ["hi" || "HI", "hello"]:
      print("found");
    default:
      print("not found");
  }

  //switch in another style
  int page = 0;
  int lastpage = 1;
  final text =
      switch (page) { 0 => "click here", 1 => "click me", _ => "none" };
  print(text);

  print("--------extensions----------");

  String motivation = "life is great";

  motivation = motivation[0].toUpperCase() + motivation.substring(1);
  print(motivation);

  String demotivation = "life is not great";
  demotivation = demotivation.captilizeFirstLetter();

  print(demotivation);
}

class Human {
  final String name;
  final int age;
  Human(this.name, this.age);
}
//extension on dart

extension CaptilizeFirstLetter on String {
  String captilizeFirstLetter() {
    return this[0].toUpperCase() + this.substring(1);
  }
}
