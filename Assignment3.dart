import 'dart:io';

void main() {
  print("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);
  
  if (isStrongNum(n)) {
    print("$n is a Strong Number.");
  } else {
    print("$n is not a Strong Number.");
  }
}

bool isStrongNum(int num) {
  int sum = 0;
  int originalNum = num;
  
  while (num > 0) {
    int digit = num % 10;
    sum += fact(digit);
    num ~/= 10;
  }
  
  return sum == originalNum;
}

int fact(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  int fact = 1;
  for (int i = 2; i <= n; i++) {
    fact *= i;
  }
  return fact;
}