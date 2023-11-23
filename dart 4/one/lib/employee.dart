abstract class Employee {
  String fname;
  String lname;
  int age;



  Employee(this.fname, this.lname, this.age);

  void displayFullName() {
    print("Fullname: $fname $lname");
  }

  void calculateYearlySalary();
}

class PartTimeEmployee extends Employee {
  double hourlySalary;
  PartTimeEmployee(super.fname, super.lname, super.age, this.hourlySalary);

  @override
  void calculateYearlySalary() {
    double yearly = hourlySalary * 4 * 20 * 12;
    print('Yearly Salary: $yearly');
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(super.fname, super.lname, super.age, this.monthlySalary);

  @override
  void calculateYearlySalary() {
    double yearly = monthlySalary * 12;
    print("Yearly Salary: $yearly");
  }
}

void main(List<String> args) {
  Employee employee = FullTimeEmployee("Shristy", "Thapa", 19, 20000);
  employee.calculateYearlySalary();
  employee.displayFullName();

  Employee employee1 = PartTimeEmployee("Harsika", "Cha", 20, 5555000);
  employee1.calculateYearlySalary();
  
}
