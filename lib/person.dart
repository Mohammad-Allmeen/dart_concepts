class Person{
  String _name;
  int _age;

  // getter method is implemented to access the private data by another class
  //setter is used to modify/change the private data by another class
  String get name => _name;
  int get age => _age;

  //set method to modigy the private value

  set setAge (int setage ){ // the value will be modified when user will call this function from another class through instance and will give the value
    if (setage>0)
      {
        _age= setage;
      }
  }
  set setNameFunc(String setName)
  {
        _name = setName;
  }

  //constructor
  Person(this._name, this._age);

  void display(){
    print('name: ${_name}, age: ${_age}');
  }
}