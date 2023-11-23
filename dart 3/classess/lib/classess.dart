class Arithemetic {
  int num1;
  int num2;

  Arithemetic(this.num1, this.num2);

  Arithemetic.withoutFirst(this.num2) : num1 = 0;

  Arithemetic.withoutSecond(this.num1) : num2 = 0;

  int sum() {
    return num1 + num2;
  }
  int multiply() {
    return num1 * num2;
  }
}
void main(List<String> args) {
  Arithemetic arithemetic = Arithemetic(10, 20);
  print(arithemetic.sum());
  print(arithemetic.multiply());

  Arithemetic arithmetic1 = Arithemetic.withoutFirst(10);
  print(arithmetic1.sum());

  Arithemetic arithmetic2 = Arithemetic.withoutSecond(50);
  print(arithmetic2.sum());
}
//snake_case -> file
//camelCase -> variable and function
//PascalCase -> Classes


//constructor overloding
//immutable class
//const vs final
//final update