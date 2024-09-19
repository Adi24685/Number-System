import 'dart:io';
void main() {
  print('Enter a number: ');
  int n = int.parse(stdin.readLineSync()!);
  if (isP(n)) {
    print('$n is a Palindrome Number.');
  } else {
    print('$n is not a Palindrome Number.');
  }
}
bool isP(int num) {
  int rev = 0;
  int temp = num;
  while (temp > 0) {
    int digit = temp % 10;
    rev = rev * 10 + digit;
    temp ~/= 10;
  }
  return rev == num;
}