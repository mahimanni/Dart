// In dart, any identifier like (class, class properties, top-level function, or variable) that starts with an underscore _ it is private to its library.

// creating getter and setter methods by using the get and set keywords
// getter and setter methods are used to access and update the value of the private properties
class Vehicle{
    String? _model;
    int? _year;

    //getter method
    String? get model => _model;
    int? get year => _year;

    //setter method
    set model(String? model) => _model = model;
    set year(int? year) => _year= year;
}

void main(){
    var vehicle= Vehicle();
    vehicle.model= "Thar";
    vehicle.year= 2024;
    print(vehicle.model);
    print(vehicle.year);
}