import 'dart:core';

void run(){
  Car ob1= Car('BMW', 'X6', 2024, 200, true);
  ob1.display();
  ob1.calculateRentalPrice(15);

}
class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model,this.year);
  void display(){
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
  }
// function/method to calculate the rent price
  double calculateRentalPrice(int days){
    return days*50.0;
  }
}

//derived/child class/sub-class

class Car extends Vehicle{
  double speed;
  bool suv;
  Car(String brand, String model, int year,this.speed, this.suv,):super(brand, model, year);
}
