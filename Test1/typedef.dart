typedef MultiOperation(int n1, int n2);//declaring a typedef (typedef function_name(parameters);)

Sum(int n1, int n2){
    print("sum: ${n1+n2}");
}
Sub(int n1, int n2){
    print("sub: ${n1-n2}");
}

void main(){
    MultiOperation mp= Sum;//Assigning typedef variable (typedef varname= funcname;)
    mp(11,12);//calling function with typedef (varname(parameters))

    //redefining mp with Sub function
    mp= Sub;
    mp(11,12);
}
// Output-
// sum: 23
// sub: -1