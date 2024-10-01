//LIST
void main(){
    //String list
     List<String> logstr= [];
    // List<String> logstr= List.empty(growable: true);
    //List<String> logstr= ["Login","Logout"];
    logstr.add("CHECK");
    logstr.add("ERROR");
    logstr.add("INFO");
    // logstr.add(2);//Error: The argument type 'int' can't be assigned to the parameter type 'String'

    logstr= logstr.reversed.toList();
    for(String i in logstr){
        print(i);
    }

    print(logstr.isEmpty);
    print(logstr.first);
    for(var i=0;i<logstr.length;i++){
         print(logstr[i]);
    }
   

    //int list
    // List<int> logstr= List.empty(growable: true);
    // logstr.add(1);
    // logstr.add(2);
    // for(int i in logstr){
    //     print(i);
    // }
}
// O/P-
// CHECK
// ERROR
// INFO
