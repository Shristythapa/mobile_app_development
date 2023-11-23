import 'dart:io';

//dart file name must be in snake case letter
//class names should be in camle case

//to run dart file-> cd lib -> dart <file name>
void main() {
  print("Enter length: ");
  int length = int.parse(stdin.readLineSync()!);

  print("Enter breath: ");
  int breath = int.parse(stdin.readLineSync()!);

  if (length == breath) {
    print("Square");
  } else {
    print("Rectangle");
  }



}
