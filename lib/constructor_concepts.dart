// Constructor -
// Constructor is specialized method which is used to initialize object
// Constructor is automatically called when the user created the object
// Constructor has same name as the class name

import 'package:flutter/cupertino.dart';

void main(){
  Student s1 = Student('Mohammad Allmeen', 20); // s1 is the instance of the class student likewise we can create multiple instance or object for one class
  Student s2 = Student('Arshi', 20); //s2 is the second object or instance of the class
  s1.name ='Allmeen';
  s1.age= 23;
  s1.display();

//object creation for 3rd way
  //Student s3 = Student(name : 'Allmeen' age: 23);

//another way to use the constructor
  List<Student> details = [
    Student('Parvez', 48),
    Student('Shaheen', 45),
    Student('Raess', 60),
  ];

//for each loop in the dart
  details.forEach((element){
    print('The name of the person is ${element.name} age is ${element.age}');
  });
}

class Student {
  String? name;
  int? age;

  Student(String name_cons, int age_cons) {

    this.name = name_cons;
    //this keyword means the values which are coming from above instance is assigned in the variable of Student class constructor
    this.age = age_cons;

    // 2nd Way
    //   Student(this.name, this.age) //we can also write this one line directly
    //   {
    //     print('Second method called ');
    //   }
    //
    //   //3rd way
    //   in above object creation we need to use variable name to initialize the value in the variable
    //   if there is compulsory requirements of a data we use require keyword

    //   Student({this.name='', this.age}){ // in this way even when we do not assign the value of name variable it will not print null it will simply print blank
    //   print('3rd method called');;
    //   }
    //   print(name);
    // }
  }
  void display()
  {
    print ('-----');
    print ('The name of the user is ${name}');
    print('The age of the student is ${age}');
    print('-------');
  }
}
