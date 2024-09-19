import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);

  if (isP(n)) {
    print("$n is a prime number");
  } else {
    print("$n is not a prime number");
  }
}

bool isP(int num) {
  if (num <= 1) {
    return false;
  }
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}