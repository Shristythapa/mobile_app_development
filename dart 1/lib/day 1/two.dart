import 'dart:io';

void main() {
  print("Enter grade: ");
  int grade = int.parse(stdin.readLineSync()!);

  if (grade < 25) {
    print('F');
  } else if (grade > 25 && grade < 45) {
    print('E');
  } else if (grade > 45 && grade < 50) {
    print('D');
  } else if (grade > 50 && grade < 60) {
    print('C');
  } else if (grade > 60 && grade < 80) {
    print('B');
  } else if (grade > 80) {
    print('A');
  }
}
