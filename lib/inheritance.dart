
void main(){
  Student p1 =Student();
  p1.name= 'Allmeen';
  p1.age=23;
  p1.display();
}

//PARENT CLASS,SUPER CLASS, BASE CLASS
class Person
{
  String? name;
  int? age;
  void display(){
    print('The Name is $name');
    print ('The age is $age');
  }
}

//DERIVED CLASS , SUBCLASS, CHILD CLASS

class Student extends Person { // extends keyword gives the functionality of Inheritance and gives us the access to use the data member and member function of the base class
  //Data member
  String? regNum;
  String? sem;

  // member function/ method
  void displayStudentInfo(){
    print('Reg num is $regNum');
    print ('Semester is $sem');
  }
}