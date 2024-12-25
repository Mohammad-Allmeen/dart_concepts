void main(){
Car obj= Car('KIA', 'SELTOS', '2024', 4);
obj.displayInfo();
Bike b1= Bike('KIA', 'SELTOS', '2024', true);
print('Rental price for the Car is \$ ${obj.rentCalculate_Car(10)}');
print('The Rental price of Bike is \$ ${b1.rentCalculateBike(10)}');
}
class Vehicle{
  String brand;
  String model;
  String year;

  Vehicle(this.brand, this.model, this.year);

  void displayInfo(){
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');

  }

  double rentCalculate_Car(int days){
    return days*50;
  }

  double rentCalculateBike(int days){
    return days*30;
  }
}
class Car extends Vehicle{
  int door;
  Car(String brand, String model, String year, this.door): super(brand,model,year);
@override // Method/Function overriding
double rentCalculate_Car(int days){
  return super.rentCalculate_Car(days);
}
}

class Bike extends Vehicle{
  bool hasCarrier;
  Bike(String brand , String model, String year, this.hasCarrier):super(brand, model, year);
@override
  void display(){
  super.displayInfo();

  }
  @override
  double rentCalculateBike(int days){
    return super.rentCalculateBike(days)-(hasCarrier ? 5.0 : 0.0) ;
  }

}

