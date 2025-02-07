import 'dart:io';

String decToBin(int number){

  StringBuffer result = StringBuffer();
  while(number>0){
    int rem= number%2;
    result.write(rem);
    number~/=2;
  }

  return result.toString().split('').reversed.join('');
}

void main() {
  print('Enter the decimal number');
  int? n= int.tryParse(stdin.readLineSync()!);

  String binary= decToBin(n!);

}