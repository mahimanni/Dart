import 'dart:io';
class NumbersProperties{
    int inputNumber(){
        stdout.writeln("Enter a number: ");
        int? n= int.parse(stdin.readLineSync()!);
        return n;
    }
    double inputNumberDouble(){
      stdout.writeln("Enter a double number: ");
      double? n= double.parse(stdin.readLineSync()!);
      return n;
    }
    /*String inputString(){
      String? str= stdin.readLineSync();
      return str;
    }*/
}
void main(){
    NumbersProperties obj= new NumbersProperties();

    /*
    //NUMBER METHODS
    print("**************************NUMBER METHODS****************************");
    print("abs:");//returns the absoulte value of the given no(i.e. is -ve then +ve and if +ve then no change)
    print(obj.inputNumberDouble().abs());

    print("ceil:");
    print(obj.inputNumberDouble().ceil());

    print("floor:");
    print(obj.inputNumberDouble().floor());

    print("compareTo:");
    print(obj.inputNumber().compareTo(obj.inputNumber()));

    print("remainder:");
    print(obj.inputNumber().remainder(obj.inputNumber()));

    print("Round:");
    print(obj.inputNumberDouble().round());

    print("toDouble:");
    print(obj.inputNumber().toDouble());

    print("toInt:");
    print(obj.inputNumber().toInt());
    //print(obj.inputNumberDouble().ToInt());//method 'ToInt' isn't defined for the type 'double'

    print("toString");
    print(obj.inputNumber().toString());
    print("numabove+1: ");
    print(obj.inputNumber().toString()+"1");

    print("truncate:");
    print(obj.inputNumberDouble().toInt());

    //NUMBER PROPERTIES
    print("**************************NUMBER PROPERTIES****************************");
    print("hashcode:");
    print(obj.inputNumber().hashCode);

    print("isFinite:");
    print(obj.inputNumber().isFinite);

    print("isInfinite:");
    print(obj.inputNumber().isInfinite);
    
    print("isNan:");
    print(obj.inputNumber().isNaN);

    print("isNegative:");
    print(obj.inputNumber().isNegative);

    print("sign:");
    print(obj.inputNumber().sign);

    print("isEven:");
    print(obj.inputNumber().isEven);

    print("isOdd:");
    print(obj.inputNumber().isOdd);
    */

    //NUMBER METHODS
    print("**************************NUMBER METHODS****************************");
    String str="mahima";
    print("toLowerCase:");
    print(str.toLowerCase());

    print("toUpperCase:");
    print(str.toUpperCase());

    print("trim:");
    print(" mahia ".trim());

    print("compareTo:");
    print(str.compareTo("manya"));

    print("replaceAll:");
    print("hello world hello world".replaceAll("world","girl"));

    print("split:");
    print("hello world".split(' '));

    print("substring:");
    print(str.substring(2,4));

    print("toString:");
    print(str.toString());

    print("codeUnitAt:");
    print(str.codeUnitAt(0));



    //STRING PROPERTIES
    print("**************************STRING PROPERTIES****************************");
    print("codeUnits:");
    print("mahima".codeUnits);
    // print(obj.inputstring().codeUnits);

    print("isEmpty:");
    print("".isEmpty);
    // print(obj.inputstring().isEmpty);

    print("Length");
    print("mahima".length);
    // print(obj.inputstring().length);
}