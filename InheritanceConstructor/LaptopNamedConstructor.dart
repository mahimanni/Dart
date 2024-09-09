class Laptop{
  //Default Constructor
  Laptop(){
    print("Laptop Constructor");
  }

  //Named Constructor
  Laptop.named(){
    print("Laptop named Constructor");
  }
}

class Dell extends Laptop{
  //Constructor
  Dell(): super.named(){
    print("Dell constructor");
  }
}

void main(){
  var d= Dell();
}

// Laptop named Constructor
// Dell constructor