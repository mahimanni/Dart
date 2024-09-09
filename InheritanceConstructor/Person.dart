class Person{
  String name;
  int age;

  //Constructor
  Person(this.name, this.age);
}

class Student extends Person{
  int rollNumber;

  //Constructor
  Student(String name, int age, this.rollNumber): super(name,age);
}

void main(){
  var stu= Student("Mahi",19,12);
  print("Student name: ${stu.name}");
  print("Student age: ${stu.age}");
  print("Student roll number: ${stu.rollNumber}");
}