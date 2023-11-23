void main() {
  print("SI is ${si(p: 10, t: 30, r: 50)}");

  print("Srea of 4 is ${area(10)}");

  vorc('a');

  va('p');
}

double si({required int p, required int t, required int r}) {
  return (p * t * r) / 100;
}

double area(int radius, [double pi = 3.14]) {
  return pi * (radius * radius);
}

void vorc(String a) {
  if (a == 'a' || a == 'e' || a == 'i' || a == 'o' || a == 'u') {
    print("Vowel");
  } else {
    print("Constant");
  }
}

void va(String a) {
  switch (a) {
    case 'a' || 'e' || 'i' || 'o' || 'u':
      print("Vowel");
      break;
    default:
      print('Constant');
  }
}

double areaa(int radius, {required pi }) {
  return pi * (radius * radius);
}
