void main() {
  //dart follows BODMAS
  print("3" * 15);

  //variables
  //<datatype> <varablename>=value;
  int firstvalue = 300;
  int secondvalue = 600;
  double secondvalues = 500;
  String hi = "hii";
  bool isadult = false;
  dynamic aweseome = 30; //not recomended

  print(firstvalue.isEven);
  print(firstvalue * secondvalue);
  print(hi.length);
  print(aweseome + 3); //runtime error

  firstvalue = 10;
  firstvalue -= 1;
  firstvalue += 1;

  //stringinterpolation
  String college = "nmamit";

  college = "$college institiue of techonology";
  print(college);
  String length = "${college.length} letters of the college";
  print(length);

  //multiline string
  String multiline = """
  i can type 
  anywhere 
  in anyline
  
  
  but inside triple quotes
  """;

  print(multiline);
  print(multiline.runtimeType);

  var somevalue = "10"; //value varrys
  const constvalue = 10;
  final finalvalue = 20;

  print(somevalue);

  print("---------------");

  //diffrence between is final run time constant
  //cons is a compiletime constant

  final date = DateTime.now();
  print(date);

  //gives error const condate=DateTime.now();

  //null

  //gives eror int name=null;
  //explicitly specify
  int? name = null;
  String? age = "hi";

  print(name);
  print(age?.length);
  print(name?.isOdd ?? "no value");

  //if
  int myage = 21;
  String myname = "shahiz";
  if (myage > 18) {
    print("adult");
  } else {
    print("child");
  }

  if (myname.startsWith("s")) {
    print(myname);
  } else {
    print("not $myname");
  }

  //ternary
  String result = myname.startsWith("sh") ? "yes " : "np";

  print(result);

  //switch
  int mychoice = 2;
  int mark = 4;
  switch (mychoice) {
    case 1 when mark == 5:
      print("its one");
    case 2:
      print("its 2");
    default:
      print("not 1 and 2");
  }

  //loops
  //for loop

  for (int i = 0; i < 10; i++) {
    print(i);
  }

  //while
  int value = 10;
  int i = 0;
  //while
  print("-----while-----");
  while (i < value) {
    i++;
    print(i);
  }
  print("-------------------");
  print("-----do-----");
  int j = 0;
  do {
    print(j);
    j++;
  } while (j < value);

  //continue
  //break
}
