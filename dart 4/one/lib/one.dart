import 'package:equatable/equatable.dart';

class Person extends Equatable {
  String fullName;
  int age;

  Person({required this.fullName, required this.age});

  void display() {
    print("Name: $fullName");
    print("Age: $age");
  }

  @override
  List<Object?> get props => [fullName, age];
}

class Persons {
  String fullName;
  int age;

  Persons({required this.fullName, required this.age});

  void display() {
    print("Name: $fullName");
    print("Age: $age");
  }
}

void main(List<String> arguments) {
  //to compare the values of these object
  //use - Data class - Freezed class - equatable
  Person p1 = Person(fullName: "Shristy Thapa", age: 19);
  Person p2 = Person(fullName: "Shristy Thapa", age: 19);

  p1.display();
  p2.display();

  print(p1 == p2);

  Persons p3 = Persons(fullName: "Shristy Thapa", age: 19);
  Persons p4 = Persons(fullName: "Shristy Thapa", age: 19);

  print(p3 == p4);
}
