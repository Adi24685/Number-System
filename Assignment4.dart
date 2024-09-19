import 'dart:io';
import 'dart:math';
void main() {
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);
  if (isArmstrong(number)) {
    print('$number is an Armstrong Number.');
  } else {
    print('$number is not an Armstrong Number.');
  }
}

bool isArmstrong(int num) {
  int sum = 0;
  int temp = num;
  int numDigits = num.toString().length;

  while (temp > 0) {
    int digit = temp % 10;
    sum += pow(digit, numDigits).toInt();
    temp ~/= 10;
  }
  return sum == num;
}