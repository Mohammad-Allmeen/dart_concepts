void main(){
  Car car = Car();
  car.start();
  car.stop();

  Bike b= Bike();
  b.start();
  b.stop();
}

abstract class Vehicle{
  void start();
  void stop();
}

class Car extends Vehicle{
  void start(){

    print('Car Engine start');
  }

  void stop(){
    print('Car Engine stop');
  }
}

class Bike extends Vehicle{
  void start(){
    print('Bike Engine start');
  }

  void stop() async{
    await Future.delayed(Duration(seconds: 3));
    print('Bike Engine stop');
  }
}