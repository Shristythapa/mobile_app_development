import 'dart:ffi';

class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  //use to string to print vlues of obj
  @override
  String toString() {
    return "Name:$name,Age:$age,Address:$address";
  }
}

void main(List<String> args) {
  List<Person> persons = [];

  Person person1 = Person("Shristy", 19, "Lolang");
  persons.add(person1);
  Person person2 = Person("Sabina", 21, "Samkhusi");
  persons.add(person2);
  Person person3 = Person("Shristy", 19, "not lolang");
  persons.add(person3);
  Person person4 = Person("Smriti", 19, "not lolang");
  persons.add(person4);
  Person person5 = Person("SSSSS", 19, "not lolang");
  persons.add(person5);

  print("Desecending");
  for (var i in persons.reversed) {
    print(i.toString());
  }
  //use for each and map instead of ofr loop
  print("For each");
  for (var i in persons) {
    print(i.toString());
  }
  print("map");
  persons.map((e) => print(e));

  //print first 3 only
  print("first 3");

  print(persons.take(5).toString());
}
