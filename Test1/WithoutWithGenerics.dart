//Without generics
/*
class IntData{
    int data;
    IntData(this.data);
}
class DoubleData{
    double data;
    DoubleData(this.data);
}

void main(){
    IntData id= IntData(10);
    print(id.data);

    DoubleData dd= DoubleData(10.5);
    print(dd.data);
}
*/

//With generics
class Data<T>{
    T data;
    Data(this.data);
}

void main(){
    //create object of type int, double
    Data<int> id= new Data<int>(10);
    print(id.data);

    Data<double> dd= new Data<double>(10.5);
    print(dd.data);
}