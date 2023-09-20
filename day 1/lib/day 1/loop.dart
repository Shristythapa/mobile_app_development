void main() {
  for (int i = 1; i <= 10; i++) {
    if (i == 4 || i == 5 || i == 9) {
      continue;
    } else if (i <= 5) {
      print(i * 10);
    } else {
      print(i*100);
    }
  }
}
