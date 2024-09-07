//creating two public methods getId() and getName() to access the private properties
class Student{
    //Private properties
    int? _id;
    String? _name;

    //getter methods to access private properties
    int getId(){
        return _id!;
    }
    String getName(){
        return _name!;
    }

    //setter method to update private properties
    void setId(int id){
        this._id= id;
    }
    void setName(String name){
        this._name= name;
    }
}

void main(){
    Student st= new Student();//object of Student class

    //setting values to the object using setter methods
    st.setId(11);
    st.setName("Mahi");

    //retrieve values of the object using getter methods
    print("Id: ${st.getId()}");
    print("Name: ${st.getName()}");

    st.setId(12);
    print("New Id: ${st.getId()}");
}