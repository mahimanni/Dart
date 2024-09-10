void main(){
  try{
    int result= 10~/0;
    print("Result: $result");
  }on IntegerDivisionByZeroException{
    print("Cannot divide by zero");
  }catch(e){
    print("An error occurred");
  }
}