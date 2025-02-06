/*
In Dart, the mixin is the phenomenon which allows the code to share between different classes
'with' and 'on' is the keyword we use to implement mixin
Important point for mixin-
1. for mixin we cannot create object
2. for mixin we cannot create constructor
3. we cannot extend mixin class
 */

void main(){
  Person ob1= Person('Allmeen', '1234 5');
}
class Person with Logger, Validation{
  String name;
  String password;

  Person(this.name, this.password);

  // void display(){
  //   print('The name is ${name} and Password is ${password}');
  // }

  //with the use of Mixin
  void display(){
    if(validPassword(password)!=null){
      log(validPassword(password).toString());
    }else{
      log('The name is ${name} and the Password is ${password}');
    }
  }
}

mixin Logger{
  void log(String message){
    print(message);
  }
}

mixin Validation{
  String? validPassword(String value){
    if(value.isEmpty){
      return 'Password is Empty';
    }else if(value.length<6){
      return 'Password must not be less than 6';
    }
    return null;
  }
}