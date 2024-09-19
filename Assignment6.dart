import 'dart:io';
void main() {
  print('Enter a number: ');
  int n = int.parse(stdin.readLineSync()!);
  if (isDef(n)) {
    print('$n is not a Deficient Number.');
  } else {
    print('$n is a Deficient Number.');
  }
}

bool isDef(int num) {
  int sum = 0;
  for (int i = 1; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      sum += i;
    }
  }
  return sum< num;
}