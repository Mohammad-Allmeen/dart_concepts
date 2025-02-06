// interface provide a syntax that class must follow
// in Java we have specific defined keyword 'interface' to implement interface
//Whereas in dart you do not have any specific keyword

//In dart, interface is implemented in two ways
// 1. Concrete class 2. By abstract class


// By concrete class

// by default the basic class we have is a concrete class

void main(){
MacBook m1= MacBook();
m1.turnON();
m1.turnOff();


// object creation by the abstract method

Dog ob1= Dog();
ob1.sound(); // this will call the sound method of the Dog class
ob1.eat();
}


class Laptop{
  void turnON(){
    print ('Laptop Turn On');
  }
  void turnOff(){
    print('Laptop Turn Off');
  }
}

//Now below the derived class is using the concept of interface
// The implement keyword is used
// Therefore the method which are present in the base class the same method is needed to be overriden in the derived class
// The method should be with same name and similar return type. Now this concept is called inheritance and method overriding and also compile time polymorphism
// It will give you error if you do not override the method of the base class
class MacBook implements Laptop{

  @override // this is a notation to show the method is overriden
  //The advanatge of implementing is that with overriden method the user can define and use in their own specific way

  void turnON(){
    // we can call the turn Method of the base class but we need to extend that class then only it will be possible
   print('Macbook Turn On');
  }

  void turnOff(){
    print('Macbook Turn Off');
  }

}

//----------------------------------------------------------------------

// 2. Method to implement interface by abstraction


abstract class Animal{

  // this is abstract method which is just declared in the abstract class but not defined
  void sound(); // declaration of abstract method

  //non-abstract method because it is declared and defined
  void eat(){
    print('Animal eats');
  }
}

class Dog extends Animal{ // now until and unless we do not override and define the abstract method in this class it will give error


  @override
  void sound(){ // defining the abstract method and this is also the concept of inheritance and method overriding
    print('Dog barks');

    super.eat(); // through super you can access the non abstract method of the base class
  }
}

class Cat extends Animal{ // now until and unless we do not override and define the abstract method in this class it will give error

  @override
  void sound(){ // defining the abstract method
    print('Meow');
  }
}