class Employee {
  final String fname;
  final String lname;
  final int age;

  Employee copyWith({String? fname, String? lname, int? age}) {
    return Employee(
        fname: fname ?? this.fname,
        lname: lname ?? this.lname,
        age: age ?? this.age);
  }

  Employee({required this.fname, required this.lname, required this.age});

  void displayFullName() {
    print("Fullname: $fname $lname");
  }
}

void main(List<String> args) {
  Employee e1 = Employee(fname: "Shristy", lname: "Thapa", age: 12);
  Employee e2 = e1.copyWith(age: 30);
}
