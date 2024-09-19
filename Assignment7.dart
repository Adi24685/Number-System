import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  int n = int.parse(stdin.readLineSync()!);
  if (isAb(n)) {
    print('$n is not an Abundant Number.');
  } else {
    print('$n is an Abundant Number.');
  }
}

bool isAb(int num) {
  int sum = 0;
  for (int i = 1; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      sum += i;
    }
  }
  return sum> num;
}