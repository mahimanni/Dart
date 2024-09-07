class ParameterizedConstructor{
  //parameterized constructor
  ParameterizedConstructor(int num){
    print("This is the  parameterized constructor");
    print("The number is: ${num}");
  }  
}
void main(){
  ParameterizedConstructor obj2= new ParameterizedConstructor(12);
}