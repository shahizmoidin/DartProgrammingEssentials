void main() {
  printname();

  print(printnstring());
  print(printnumber());
  print(printnameage());
  //something new
  var answer = printnameage();
  print(answer.$2);

  var anse = printagename();
  print(anse.age);
  //records
  var (age, name) = printnameage();
  print(age);
  print(name);
  String? meranaam = namee("shahiz");
  print(meranaam);

  //namedargments
  var abc = college("shahiz", clas: "nc62", branch: "mca");
  print(abc);
}

void printname() {
  print("shahiz");
}

String printnstring() {
  return "batman";
}

int printnumber() {
  return 20;
}

//something new in dart records
(int, String) printnameage() {
  return (21, "shahiz");
}

({int age, String name}) printagename() {
  return (age: 21, name: "shahiz");
}

//parameterzed
String? namee(String na) {
  return null;
}

String? college(String name,
    {required String clas, required String branch, int? year}) {
  return null;
}
