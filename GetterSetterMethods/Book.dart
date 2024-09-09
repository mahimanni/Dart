// class has two private properties _name and _prize.
// There are two getters name and price to access the value of the properties
class Book{
  //Private Properties
  String? _name;
  double? _price;

  //Constructor
  Book(this._name, this._price);

  //Getter method to access private property _name
  //String get name=> this._name!;
  String? get name{
    if(_name == ""){
      return "No Name";
    }
    return this._name;
  }

  //Getter method to access private property _price
  double get price=> this._price!;
}

void main(){
  //Create an object of Book class
  Book b= new Book("Wisdom",500);

  //display the values of the object
  //first notebook object
  print(b.name);
  print(b.price);

  //second notebook object
  Book b2= new Book("Tempest",100);
  print(b2.name);
  print(b2.price);
}