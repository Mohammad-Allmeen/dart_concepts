
void main(){
  Area a1 = Area();
  a1.height= 15;
  a1.width=10;
  a1.areaofRectangle(16, 10);
}
class Area
{
  double? height;
  double? width;

  void areaofRectangle(double height_by_method, double weight_by_method){
    print(width);
    try{
      // if(width== null){
      //   print('width cannot be null');
      //   width= 10;
      // }

      double area =  height! * width!; //it is the null check operator it indicates that the value canot be a null
      print('The area of the rectangle is ${area}');

      //another option
      // means that when height will be null it will assign the next value


      double another_method = height?? 10 * (width?? 12) ;
      print('The area by another method is ${another_method}');

      double area_by_method = height_by_method * weight_by_method;
      print("Area by method initialization ${area_by_method}");

    }
    catch(e){
      print(e);
    }
  }
}