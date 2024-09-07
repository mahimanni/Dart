import 'dart:io';
void main(){
    
    //write
    stdout.write('This illustrates ');
    stdout.write('write() function \n');
     
    //writeln() 
    stdout.writeln('This illustrates');
    stdout.writeln('writeln() function \n');

    //print()
    print('This illustrates');
    print('print() function');
    

    print("Enter the value of a:");
    int? a= int.parse(stdin.readLineSync()!);
    print("Enter the value of b:");
    int? b= int.parse(stdin.readLineSync()!);
    int mul= a*b;
    print("Product of these two numbers is: $mul");

    print("Enter you favourite coding lang:");
    String? codelang= stdin.readLineSync();
    print("\nGreat! ${codelang} is your favourite language");

    
}