class Car{
  //Constructor
  Car(String name, String color){
    print("Car constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class Porsche extends Car{
  //Constructor
  Porsche(String name, String color): super(name, color){
    print("Porsche Constructor");
  }
}

void main(){
  var p= Porsche("Porsche 911","Black");
}

// Car constructor
// Name: Porsche 911
// Color: Black
// Porsche Constructor