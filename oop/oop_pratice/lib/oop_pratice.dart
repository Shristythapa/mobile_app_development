class Dog {
  String? name;
  String? furColor;

  //defult constructor
  //has no parameter
  Dog();

  //parameterized constructor
  // Dog(String name, String furColor) {
  //   this.name = name;
  //   this.furColor = furColor;
  // }

  //single line constructor
  // Dog(this.name, this.furColor);

  //optional paramenter
  // Dog(this.name, [this.furColor = 'N/A']);

  //defult paramenter
  // Dog({this.name = "Dog", this.furColor = "Fur"});

  //in dart multiple constructor is not possible
  //but we can used named constructor
  Dog.namedContructor(String name, String furColor) {
    name = name;
    furColor = furColor;
  }

  void display() {
    print("$name has fur of $furColor color.");
  }
}

void main(List<String> args) {
  Dog dog1 = Dog.namedContructor("Cheery", "White");
  dog1.display();
  dog1.name = "Pluto";
  dog1.furColor = "Brown";

  // dog1.display();

//optional paramenter
  // Dog dog2 = Dog("Cheery");

  // //defult parameter
  // Dog dog3 = Dog(furColor: "pink");
  // dog3.display();
}
