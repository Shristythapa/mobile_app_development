import 'package:dartz/dartz.dart';

class Arithmetic {
  int first;
  int second;

  Arithmetic(this.first, this.second);

  Either<String, int> add() {
    try {
      return Right(first + second);
    } catch (e) {
      return Left(e.toString());
    }
  }

  Either<String, bool> checkNumber(int num) {
    if (first > 5) {
      return left("Number is > 5");
    } else {
      return right(false);
    }
  }
}

void main(List<String> args) {
  Arithmetic a = Arithmetic(12, 13);
  //handling error value
  var result = a.add();
  result.fold(
      (left) => print("Error: $left"), (right) => print("Addition: $right"));

  var check = a.checkNumber(11);
  check.fold(
      (left) => print("Number is $left"), (right) => print("Number is $right"));
}
