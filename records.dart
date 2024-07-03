void main() {
  final records = givemesomedouble();
  print(records);

  ({int a, int b, int c}) color = (a: 1, b: 2, c: 3);
  ({int x, int y, int z}) paint = (x: 1, y: 2, z: 3);
  //doest allow to join
  // color=paint;

  ({int a, int b, int c}) color2 = (a: 6, b: 9, c: 6);
  //allows to joim
  color = color2;

  //records in list
  print("------------list--------------");
  final list = [1, 2, 3];
  final [a, b, c] = list;
  print("$a $b $c");

  final leest = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final [x, y, z, ...] = leest;
  print("$x $y $z");
  final [l, m, n, ...d] = leest;
  print(d); //stores it in array
  print("------------json--------------");
  final json = {"name": "shahiz", "age": 21, "college": "nmamit"};

  if (json
      case {"name": String name, "age": int age, "college": String college}) {
    print(name);
    print(age);
    print(college);
  } else {
    print("invalid json");
  }
}

({double point, String greetings}) givemesomedouble() {
  return (point: 4.5, greetings: "hey");
}
