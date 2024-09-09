// The class has two properties firstName and lastName. 
// There is getter fullName which is responsible to get full name of person.
class Person{
  //Properties
  String? firstName;
  String? lastName;

  //Constructor
  Person(this.firstName,this.lastName);

  //Getter
  String get fullName=> "$firstName $lastName";
}
void main(){
  Person p= Person("Mahi", "Verma");
  print(p.fullName);
}