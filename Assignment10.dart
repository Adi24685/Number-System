import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  int n = int.parse(stdin.readLineSync()!);
  print('Fibonacci Series: ${fibonacciSeries(n)}');
}

List<int> fibonacciSeries(int n) {
  List<int> fibSeries = [];

  if (n >= 1) fibSeries.add(0); 
  if (n >= 2) fibSeries.add(1);
  for (int i = 2; i < n; i++) {
    fibSeries.add(fibSeries[i - 1] + fibSeries[i - 2]);
  }
  return fibSeries;
}