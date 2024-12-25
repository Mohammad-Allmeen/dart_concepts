

import 'dart:io';
class LeadNumber {
  int num;

  LeadNumber(this.num) {
    int sumEven = 0;
    int sumOdd = 0;
    while (num != 0) {
      int rem = num % 10;
      if (rem % 2 == 0) {
        sumEven += rem;
      } else {
        sumOdd += rem;
      }
      num ~/= 10;
    }
    if (sumOdd == sumEven) {
      print('Lead Number');
    } else {
      print('Not a Lead Number');
    }
  }
}
void main() {
  print('Enter the number');
  int? n = int.tryParse(stdin.readLineSync()!);

  if (n == null) {
    print('Enter the Valid Number');
  } else {
    LeadNumber ob = LeadNumber(n);
  }
}
