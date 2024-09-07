class DefaultConstructor{
  //default constructor
  DefaultConstructor(){
    print("Default Constructor is being created");
  }
  String name=' ';
  void hello(){
    print("Hello $name");
  }

  //parameterized constructor
  /*DefaultConstructor(int num){
    print("This is the  parameterized constructor");
    print("The number is: ${num}");
  }*/
}
void main(){
  DefaultConstructor obj= new DefaultConstructor();
  obj.name='xyz';
  obj.hello();

  //DefaultConstructor obj2= new DefaultConstructor(12);
  //You can’t have two constructors with the same name although they have different parameters. 
  //The compiler will display an error
}