//encapsulation is the process of combining data and function into a single method
// basically the significant functionality of implementing this is to provide the secure platform and not get easily accessible
// in dart language we make a variable or method private by using underscore in the starting name of varaible or method
// encapsulation is implementing to hide the data

import 'person.dart'; // i have imported the Person class to access the the class and its method

void main(){
  Person p1= Person('Allmeen', 23);
  p1.display();

//p1._name -> we cannot directly access the variable hence we use getter and setter method to access the private variable of another class
//through get keyword we create a alies or another varaible through which we can access the variable

// taking access of private variable data through get method
  print (p1.name);
  print(p1.age);

// Modifying the private value of another class through set method
  p1.setAge=24;
  print (p1.age);

  p1.setNameFunc='Arshi';
  print(p1.name);
}

