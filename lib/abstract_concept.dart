void main(){

  Network n1 = Network();

  Map<String, String> data = {
   'email': 'mohdallmeen6630@gmail.com',
   'password' : '1234567890'
  };
  n1.postApi(data);

}

// this is the abstract class where we only declare the method
// the base class or the class which will implement this method will implement/define and override the method
// example a unlock function/method is created by Apple. Now this method when it will be implemented by mac it will use fingerprint,
// And when it will be implemented by phone it define about face lock and ultimately when it will be implemented by watchOs it will define about text/numeric lock
abstract class BaseclassApi{
  void postApi(var data);
  void getApi();
}

class Network implements BaseclassApi{
  @override
   void postApi(var data) async{
     print('Api hit ');
    await Future.delayed(Duration(seconds: 3));
     print('user Successfully logges in');
     print(data);
  }
  @override
   void getApi(){

   }
}