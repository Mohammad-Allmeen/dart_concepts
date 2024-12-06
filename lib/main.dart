import 'dart:io';
void bubblesort(List<int> arr, int n){
for(int i=0;i<n;i++){
  for(int j =0;j<n-i-1;j++){
    if(arr[j]>arr[j+1]){
      int temp = arr[j];
      arr[j]=arr[j+1];
      arr[j+1]=temp;
    }
  }
}
print ('the sorted list is ${arr.join(" ")}');

for(int num in arr){
  print(num);
}
}
void main(){
print('Enter the number of variable you want to add');
int? n = int.tryParse(stdin.readLineSync()!);

if(n==null|| n<=0){
  print('Invalid Input, enter a integer value');
  return;
}

List<int> arr =[]; //dynamic list that will store the value entered by the user

  for(int i =0; i<n;i++){
    int? element = int.tryParse(stdin.readLineSync()!);
  if(element==null){
    print('Element is null, enter any Integer number');
    return;
  }
  arr.add(element);
  }
  bubblesort(arr, n);
}