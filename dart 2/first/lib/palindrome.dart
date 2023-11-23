void main(List<String> args) {
  print(palindrome('1111'));
}

String palindrome(var enter) {
  String flag = "not palindrome";
  if (enter.runtimeType.toString() == "int") {
    int reminder, sum = 0, temp;
    temp = enter;
    while (enter > 0) {
      reminder = enter % 10;
      sum = (sum * 10) + reminder;
      enter = enter ~/ 10;
    }
    if (sum == temp) {
      flag = "palindrome";
    }
  } else if (enter.runtimeType.toString() == "String") {
    String reverse = enter.split('').reversed.join('');
    if (enter == reverse) {
      flag = "palindrome";
    }
  }

  return flag;
}
