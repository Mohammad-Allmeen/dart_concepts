
void main(){
  //Laptop ob1 = Laptop('Macbook', 100000.0);
  Macbook macObj = Macbook('Apple Macbook', 1450.0, 'M3', 512);
  macObj.display();
}

class Laptop{
  String brand;
  double price;

  Laptop(this.brand, this.price){
    print('Base/Parent class constructor is called');
  }
  void display(){
    print ('The brand of Laptop is $brand and the price is $price');
  }
}

class Macbook extends Laptop{
  String model;
  int storage;
  // When the super class contains a constructor then we need to initialize that constructor in the derived class/child class with the super keyword
  // Macbook() : super('Macbook', 1000000.0); // initializing the super/base class constructor

  // the way if i want to assign the value through the child class constructor

  Macbook(String brand, double price, this.model, this.storage) : super(brand, price); // when i will assign the value through object the value will be initialized in the parent class variable

    void display() { // as the method name of display is similar in the parent and child class, the obj used in the main will call the child class method, hence we need to use super keyword
    super.display(); // super keyword to call the super class method
    print('Model is $model with $storage storage');
  }
}