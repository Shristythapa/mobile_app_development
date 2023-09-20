import 'dart:io';

void main(List<String> args) {
    print("Enter number: ");
  int num = int.parse(stdin.readLineSync()!);

  if (num % 2 == 0) {
    print("Even");
  } else {
    print("Odd");
  }

}