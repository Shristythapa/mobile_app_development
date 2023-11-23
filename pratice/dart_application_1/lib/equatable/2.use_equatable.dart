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
//in square brackets include variables that are to be equal
  List<Object?> get props => [fullName, age];
}

void main() {
  Person p1 = Person(fullName: "Shristy Thapa", age: 19);
  Person p2 = Person(fullName: "Shristy Thapa", age: 19);

  p1.display();
  p2.display();

  print(p1 == p2);
}
