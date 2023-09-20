class ParentClass {
  String? name;
  int? age;

  ParentClass(this.name, this.age);

  void display() {
    print("Name is : $name");
    print("Age is: $age");
  }
}

class ChildClass extends ParentClass {
  String? school;

  ChildClass(String name, int age, this.school) : super(name, age);

  void displayStudentDetails() {
    print("Name: $name");
    print("Age: $age");
    print("School: $school");
  }

  //Super is used to refer to the parent class. It is used to call the parent class’s properties and methods.
  void displayPerson() {
    super.display();
  }
}
