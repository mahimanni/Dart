class NamedConstructor{
    //named and parameterized constructor with only one parameter
    NamedConstructor.constructor1(int a){
        print("This is the parameterized constructor with only one parameter");
        print("a= ${a}");
    }

    //named and parameterized constructor with two parameters
    NamedConstructor.constructor2(int a,int b){
        print("This is the parameterized constructor with two parameters");
        print("a= ${a} b= ${b}");
    }
}
void main(){
    NamedConstructor obj1= new NamedConstructor.constructor1(10);
    NamedConstructor obj2= new NamedConstructor.constructor2(11,12);
}
