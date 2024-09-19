import 'dart:io';

void main() {
  print('Enter a number: ');
  String n = stdin.readLineSync()!;
  if (isDuck(n)) {
    print('$n is a Duck Number.');
  } else {
    print('$n is not a Duck Number.');
  }
}

bool isDuck(String num) {
  if (num[0] == '0') {
    return false;
  }

  return num.contains('0');
}