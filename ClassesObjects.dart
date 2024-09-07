import 'dart:io';
import 'dart:math';
class ClassesObjects{
    void armstrong(n)
    {
        var a, m = n, p = n, count = 0;
        double s = 0;
        while (p > 0)
        {
            count++;
            p = p ~/ 10;
        }
        while (n > 0)
        {
            a = n % 10;
            s = s + pow(a, count);
            n = n ~/ 10;
            count--;
        }
        if (m == s)
        {
            print("Armstrong no");
        }
        else
        {
            print("Not a Armstsrong no");
        }
    }

    //2. printing right angled triangle
    void righttri()
    {
        for (var i = 1; i <= 5; i++)
        {
            for (var j = 1; j <= i; j++)
            {
              stdout.write(j);
            }
            stdout.writeln();
        }
    }

    //3. Even odd
    String evenOdd(n)
    {
        var res=(n % 2 == 0) ? "even" : "odd";
        return "${n} is a ${res} number";
    }

    //4. Palindrome
    String palindrome(n)
    {
        int m = n, a,newNo=0;
        while (n > 0)
        {
            a = n % 10;
            newNo = (newNo * 10) + a;
            n = n ~/ 10;
        }
        var res= (newNo == m) ? "Palindrome number" : "not a Palindrome Number";
        return "${m} is ${res}";
    }

    //5. Reverse of a number
    int reverse(n)
    {
        int a, rev = 0;
        while (n > 0)
        {
            a =n % 10;
            rev = (rev * 10 )+ a;
            n = n ~/ 10;
        }
        return rev;
    }
}
void main(){
  //ClassesObjects obj= new ClassesObjects();
  var obj= new ClassesObjects();

  print(9/4);//2.25
  print(9~/4);//2
  print(e);//2.718281828459045

  obj.armstrong(135);
  obj.righttri();
  print(obj.evenOdd(201));
  print(obj.palindrome(121));
  print(obj.reverse(432));
}