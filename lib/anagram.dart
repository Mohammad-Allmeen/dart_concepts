import 'dart:io';

void main(){
  print('Enter the first String');
  String str1 = stdin.readLineSync()!;
  print('Enter the second String');
  String str2=stdin.readLineSync()!;


  if(isAnagram(str1,str2))
  {
    print('Yes');
  }else
  {
    print('No');
  }
}

bool isAnagram(String str1, String str2){
  if(str1.length!=str2.length){
    return false;
  }
  List<String> ch1 = str1.split('')..sort();
  List<String> ch2 = str2.split('')..sort();

  for(int i=0;i<ch1.length;i++){
    if(ch1[i]!=ch2[i]){
      return false;
    }
  }
  return true;
}