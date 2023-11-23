bool isAutomorphic(int number) {
  int square = number * number;
  String numberStr = number.toString();
  String squareStr = square.toString();


  return squareStr.endsWith(numberStr);
}

void main() {
  int num = 25; 
  if (isAutomorphic(num)) {
    print("$num is an automorphic number.");
  } else {
    print("$num is not an automorphic number.");
  }
}
