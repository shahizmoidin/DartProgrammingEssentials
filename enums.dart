enum GenderType {
  male(5000),
  female(5000);

  //enchaned enum
  final int salary;
  const GenderType(this.salary);
}

void main() {
  //enums

  Student("mohan", GenderType.male).printsalary();
  Student("radhika", GenderType.female).printsalary();
}

class Student {
  final String name;
  final GenderType gender;

  void printsalary() {
    print(name);
    print(gender.salary);
  }

  Student(this.name, this.gender);
}
