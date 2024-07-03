void main() {
  List list = [10, 20, 30, 40, "hooo"];
  print(list[2]);

  //<>called as generic
  //allow only same type
  List<int> marks = [1, 24, 5];
  print(marks[1]);

  Student s = Student<String>("String", 30);
  print(s.name.runtimeType);
  final sam = Student("sam", 4);

  List<Student> student = [Student("shhaiz", 8), sam, Student("jack", 22)];

  print(student[2].name);
  //student[2]=Student("new york");

  student.add(Student("rose", 22));
  student.insert(0, Student("new boy", 7));
  print(student);
  student.remove(sam);
  print(student);

  List<Student> newstudent = [];
  for (final stud in student) {
    if (stud.marks > 18) {
      newstudent.add(stud);
    }
  }
  print(newstudent);

  //using iterable do the same thing
  Iterable<Student> students = [
    Student("shhaiz", 8),
    sam,
    sam,
    sam,
    sam,
    Student("jack", 22),
    Student("rose", 22)
  ];
  final iterstudent =
      students.where((students) => students.marks > 19).toList();

  print("-------------");
  print(iterstudent);
  print(student.reversed.toList());
  print(student.contains(Student("jack", 22)));
  print("-----------sets-----------");
  Set<Student> study = {
    Student("shhaiz", 8),
    sam,
    sam,
    sam,
    sam,
    Student("jack", 22),
    Student("rose", 22)
  };
  print(study);

  //maps
  //same as json
  print("-------maps-----------");
  Map<String, int> scores = {
    'india': 20,
    'china': 50,
    'russia': 15,
  };
  final morescores = {
    'canada': 30,
    'usa': 63,
    'greenland': 95,
  };
  print(scores['india']?.isEven);
  print(scores);
  scores.addAll(morescores);
  print(scores);

  for (int i = 0; i < scores.length; i++) {
    print("${scores.keys.toList()[i]}:${scores.values.toList()[i]}");
  }
  print("---for each-------maps");
  scores.forEach((key, value) => print("$key: $value"));

  print("----list of maps---------");

  List<Map<String, int>> scoreboard = [
    {
      'india': 20,
      'china': 50,
      'russia': 15,
    },
    {'canada': 30, 'usa': 63, 'greenland': 95},
  ];
  scoreboard
      .map((e) => e.forEach((key, value) => print("$key:$value")))
      .toList();
}

class Student<T> {
  final T name;
  final int marks;
  Student(this.name, this.marks);
  void calculate(T age) {
    print(age);
  }

  @override
  String toString() => 'Student:$name';
}
