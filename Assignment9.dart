import 'dart:io';

void main() {
  print('Enter a number: ');
  int n = int.parse(stdin.readLineSync()!);
  if (isHarshad(n)) {
    print('$n is a Harshad Number.');
  } else {
    print('$n is not a Harshad Number.');
  }
}
bool isHarshad(int num) {
  int sum= 0;
  int temp = num;
  while (temp > 0) {
    sum += temp % 10;
    temp ~/= 10;
  }
  return num % sum == 0;
}