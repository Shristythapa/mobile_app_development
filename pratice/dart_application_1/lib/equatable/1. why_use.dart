class Persons {
  String fullName;
  int age;

  Persons({required this.fullName, required this.age});

  void display() {
    print("Name: $fullName");
    print("Age: $age");
  }
}

void main() {
  Persons p3 = Persons(fullName: "Shristy Thapa", age: 19);
  Persons p4 = Persons(fullName: "Shristy Thapa", age: 19);

 //even though the values are same this will return false
  print(p3 == p4);
}
