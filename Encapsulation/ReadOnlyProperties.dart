// You can control the properties’s access and implement the encapsulation in the dart by using the read-only properties.
// You can do that by adding the final keyword before the properties declaration. 
// Hence, you can only access its value, but you cannot change it.

class Student{
    final _schoolName= "New Public";
    // Properties declared with the final keyword must be initialized at the time of declaration. 
    // You can also initialize them in the constructor.

    String getSchoolName(){
        return _schoolName;
    }
}
void main(){
    var st= Student();
    print(st.getSchoolName());//accessing the values

    // st._schoolName= "St. Ann's Day";//error as you cannot change the values
}