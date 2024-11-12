
void main()
{
  int? age; //when the value is assigned in the variable it is called non-nullable variable
  print(age);//but when the value is not assigned it is nullable variable hence we use ? to assign that it may the null value
  print('Hello World');
  String? name;
  //the purpose of nullable variable is that we will assign the value later on
  age= 20;
  name = 'Excellent';
  print(name);
  print(age);

  // class is a blue print for creating object
  // like iphone is model a blueprint and every iphone that is created is the object of it
  // a iphone model as class is given too engineers and through that blueprint engineers built millions of object and sell it
  // now it will contain some methods and properties, calling feature, camera, notifications, alarm

  Person p1= Person(); //p1 is the instance of class created
  p1.name= 'Allmeen'; // initialized the name using the instance
  p1.display(); // to display the details

  Person p2 = Person();
  p2.name = 'Arshi';
  p2.display();

}

class Person{

  // these are static value which is created
  String? name; // as i have not initialized hence it will be not null and i will initialize using its instance
  int age=25;
  String religion = 'Islam';

  void display(){
    print('My name is ${name}');
    print('My age is ${age}');
    print('My religion is ${religion}');
  }

}
