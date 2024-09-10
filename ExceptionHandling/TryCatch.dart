void main(){
  try{
    int result= 10~/0;
    print("Result:  $result");
  }catch(e){
    print("An error occurred: $e");
  }
}