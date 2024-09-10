void validateAge(int age){
  if(age<0){
    throw ArgumentError("Age cannot be negative");
  }
}
void main(){
  try{
    validateAge(-5);
  }catch(e){
    print("Error: $e");
  }
}