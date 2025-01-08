void main(){

  final mySquare = Square(side: -10);



  print('Area: ${mySquare.calculatedArea()}');

}

class Square {

  double _side;


  Square({required double side})
    : _side = (side >= 0) ? side : throw ArgumentError('The side of the square cannot be less than or equal to 0'); 

  double get area{
    return _side * _side;
  }

  set side(double value){
      if(value <= 0){
        throw('The side of the square cannot be less than or equal to 0');
      }
      _side = value;
      print('setting new value: $value');
    }

  double calculatedArea(){
    return _side * _side;
  }

}