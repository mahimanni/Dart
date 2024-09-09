class Science{
  //Constructor
  Science(){
    print("Science class constructor");
  }
}

class Physics extends Science{
  //Constructor
  Physics(){
    print("Physics class constructor");
  }
}

void main(){
  var phy= Physics();
}
// Science class constructor
// Physics class constructor