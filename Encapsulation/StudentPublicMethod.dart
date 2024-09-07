//creating a public method getName() to access the private property
class Student{
    //private property
    var _name;

    //getter method to access private property _name
    String getName(){
        return _name;
    }

    //setter method to update private property _name
    void setName(String name){
        this._name= name;
    }
}

void main(){
    var st= new Student();
    //st.setName("Mahia");
    st._name= "Mahima";
    //underscore (_) before a variable or method name makes it library private not class private
    print(st.getName());
}