import 'dart:io';
import 'dart:math';

void main() {
  //multiplication();
  int value = int.parse(stdin.readLineSync()!);
  print(search(value));
}

void multiplication() {
  String flag = 'y';

  do {
    print("Enter value: ");
    int value = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < 11; i++) {
      print(" $value * $i = ${i * value}");
    }
    print("Do you want to continue? (y/n)");
    flag = stdin.readLineSync()!;
  } while (flag == 'y');
}

int arrHighest(List<int> arr) {
  int maxnum = 0;
  for (int i = 0; i < arr.length; i++) {
    maxnum = (maxnum, arr[i]) as int;
  }
  return maxnum;
}

String search(value) {
  String found = "Not found";
  List<int> arr = [1, 2, 3, 4, 5];

  
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == value) {
      found = "found";
    }
  }
  return found;
}

//skip and limit working with list
//freez class and final keyword
