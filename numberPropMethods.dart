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

    
    //NUMBER METHODS
    print("**************************NUMBER METHODS****************************");
    // print("abs:");//returns the absoulte value of the given no(i.e. is -ve then +ve and if +ve then no change)
    // print(obj.inputNumberDouble().abs());

    // print("ceil:");
    // print(obj.inputNumberDouble().ceil());

    // print("floor:");
    // print(obj.inputNumberDouble().floor());

    // print("compareTo:");
    // print(obj.inputNumber().compareTo(obj.inputNumber()));

    // print("remainder:");
    // print(obj.inputNumber().remainder(obj.inputNumber()));

    // print("Round:");
    // print(obj.inputNumberDouble().round());

    // print("toDouble:");
    // print(obj.inputNumber().toDouble());

    // print("toInt:");
    // print(obj.inputNumber().toInt());
    // //print(obj.inputNumberDouble().ToInt());//method 'ToInt' isn't defined for the type 'double'

    // print("toString");
    // print(obj.inputNumber().toString());
    // print("numabove+1: ");
    // print(obj.inputNumber().toString()+"1");

    // print("truncate:");
    // print(obj.inputNumberDouble().toInt());

    // //NUMBER PROPERTIES
    // print("**************************NUMBER PROPERTIES****************************");
    // print("hashcode:");
    // print(obj.inputNumber().hashCode);

    // print("isFinite:");
    // print(obj.inputNumber().isFinite);

    // print("isInfinite:");
    // print(obj.inputNumber().isInfinite);
    
    // print("isNan:");
    // print(obj.inputNumber().isNaN);

    // print("isNegative:");
    // print(obj.inputNumber().isNegative);

    // print("sign:");
    // print(obj.inputNumber().sign);

    // print("isEven:");
    // print(obj.inputNumber().isEven);

    // print("isOdd:");
    // print(obj.inputNumber().isOdd);
    

    //STRING METHODS
    // print("**************************STRING METHODS****************************");
    // String str="mahima";
    // print("toLowerCase:");
    // print(str.toLowerCase());

    // print("toUpperCase:");
    // print(str.toUpperCase());

    print("trim:");
    print(" mahi ma ".trim());//mahi ma

    // print("compareTo:");
    // print(str.compareTo("manya"));

    // print("replaceAll:");
    // print("hello world hello world".replaceAll("world","girl"));

    // print("split:");
    // print("hello world".split(' '));

    // print("substring:");
    // print(str.substring(2,4));

    // print("toString:");
    // print(str.toString());

    // print("codeUnitAt:");
    // print(str.codeUnitAt(0));



    // //STRING PROPERTIES
    print("**************************STRING PROPERTIES****************************");
    print("codeUnits:");
    print("mahima".codeUnits);//[109, 97, 104, 105, 109, 97]
    // print(obj.inputstring().codeUnits);

    print("isEmpty:");
    print("".isEmpty);//true
    // print(obj.inputstring().isEmpty);

    print("Length");
    print("mahima".length);//6
    // print(obj.inputstring().length);

    //-----------------------------Just checking-------------------------------------------
    String txt= "Dart Program";
    print(txt.substring(5,8));//Pro
    print(txt.substring(5));//Program

    //Returns the 16-bit Unicode code unit at the specified index
    String txt1= "Dart";
    print(txt.codeUnitAt(0));//68
    print(txt.codeUnitAt(1));//97

    String txt2= "Hello, how, are, you doing ";
    print(txt2.split(','));//[Hello,  how,  are,  you doing ]
    print(txt2.split(' '));//[Hello,, how,, are,, you, doing, ]

    //compare one string with other in the lexicographical manner
    String text1 = "apple";
    String text2 = "banana";
    //< 0: If the calling string is less than the other string (comes earlier in lexicographical order).
    print(text1.compareTo(text2)); // Output: -1 (apple comes before banana) 
    print(text2.compareTo(text1));//1 firstval-secval 
    print(text1.compareTo(text1));//0

    //If all characters match and the lengths differ, the shorter string is considered less than the longer string
    String str1 = "Dart";
    String str2 = "DartLang";
    print(str1.compareTo(str2)); // Output: -1 (Shorter string is less)
    
    //<--------------------------------------------------------------------------------->
    String msg= "Hello 123";
    String heart= "\u2665";
    print(msg);
    print(heart);
}