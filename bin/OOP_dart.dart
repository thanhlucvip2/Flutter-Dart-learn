class Person {
  String? name;
  int? age;
  Person(String this.name, int this.age);
}

class Student extends Person {
  String? id;
  Student(this.id, super.name, super.age);
}

void TestClassPersion1() {
  final student1 = Student('123', 'doan thanh luc', 22);
  print(student1.id); // 123
  print(student1.name); // doan thanh luc
  print(student1.age); // 22
}
