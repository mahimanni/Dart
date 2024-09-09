class Laptop{
  //Constructor
  Laptop({String? name, String? color}){
    print("Laptop Constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class MacBook extends Laptop{
  //Constructor
  MacBook({String? name, String? color}): super(name: name, color: color){
    print("MacBook Constructor");
  }
}

void main(){
  var mac= MacBook(name: 'MacBook Pro', color: 'Black');
}

// Laptop Constructor
// Name: MacBook Pro
// Color: Black
// MacBook Constructor