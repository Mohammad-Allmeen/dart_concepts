// Enum is a special type that represents constant value
// Enum are used when there is a variable that has to store a set of predefined values

void main(){
Automobile ob1= Automobile('The lord of the world', Cars.Mahindra, Adminpanel.admin); // as enum is the constant value hence in the constructor you can only pass the constant value which is present in the enum

//Cars car = Cars.Mahindra;

print(ob1.adminPanel.name);
print(ob1.owner);

switch(ob1.car){
// or we can use->  switch (ob1.car)  // when we are using this line there is no need of the 7th line

    case Cars.BMW:
    print('The car is BMW');
    break;
    case Cars.Ferrari:
    print('Car is Ferrari');
    case Cars.Mahindra:
      print('Car is Mahindra');
    default:
    print('No Car');
}
}
// enum
enum Cars {Ferrari, Mahindra, Maruti, BMW, AUDI, KIA}

enum Status{loading, error, Succesfull} // this logic is used in the process of login and hitting the api

enum Adminpanel{user, admin}

// class
class Automobile{
  String owner;
  Cars car;
  Adminpanel adminPanel;

  Automobile(this.owner, this.car, this.adminPanel);
}