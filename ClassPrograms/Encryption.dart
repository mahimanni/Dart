import 'dart:math';
import 'dart:io';
abstract class Encryptable{
    void encrypt(String data);//for encryption operations
    void decrypt(String encryptedData);//for decryption operations
}

class AES implements Encryptable{
    @override
    void encrypt(String data){
        print("Encryption by AES");
        String s= data;
        String str = '';
        int n= 2;
  
        for (int i = 0; i < s.length; i++) {
            var ch = s.codeUnitAt(i); // Getting the ASCII code of the character

            // For uppercase letters (A-Z)
            if (ch >= 65 && ch <= 90) {
            if (ch + n > 90) {
                str += String.fromCharCode(64 + (n + ch - 90));
            } else {
                str += String.fromCharCode(ch + n);
            }
            }

            // For lowercase letters (a-z)
            else if (ch >= 97 && ch <= 122) {
            if (ch + n > 122) {
                str += String.fromCharCode(96 + (n + ch - 122));
            } else {
                str += String.fromCharCode(ch + n);
            }
            }

            // For numbers (0-9)
            else if (ch >= 48 && ch <= 57) {
            if (ch + n > 57) {
                str += String.fromCharCode(47 + (n + ch - 57));
            } else {
                str += String.fromCharCode(ch + n);
            }
            }

            // For any other character
            else {
            str += s[i];
            }
        }
        print("Ciphertext is: $str");
    }

    @override
    void decrypt(String encryptedData){
        print("Decryption by AES");
        String s= encryptedData;
        int n= 2;
        String str = '';

        for (int i = 0; i < s.length; i++) {
            var ch = s.codeUnitAt(i); // Getting the ASCII code of the character

            // For uppercase letters (A-Z)
            if (ch >= 65 && ch <= 90) {
            if (ch - n < 65) {
                str += String.fromCharCode(91 - (n - (ch - 65)));
            } else {
                str += String.fromCharCode(ch - n);
            }
            }

            // For lowercase letters (a-z)
            else if (ch >= 97 && ch <= 122) {
            if (ch - n < 97) {
                str += String.fromCharCode(123 - (n - (ch - 97)));
            } else {
                str += String.fromCharCode(ch - n);
            }
            }

            // For numbers (0-9)
            else if (ch >= 48 && ch <= 57) {
            if (ch - n < 48) {
                str += String.fromCharCode(58 - (n - (ch - 48)));
            } else {
                str += String.fromCharCode(ch - n);
            }
            }

            // For any other character
            else {
            str += s[i];
            }
        }
        print("Decrypted text is: $str");
    }
}


//RSA Algorithm
class RSA{
    bool prime(int n){
        for(int i=2;i<=n~/2;i++){
            if(n%i==0)
                return false;
        }
        return true;
    }

    // Function to implement the Extended Euclidean Algorithm
    int extendedEuclidean(int a, int b) {
        int e = 17;
        int t = 0, newT = 1;
        int r = b, newR = a;

        while (newR != 0) {
            int quotient = r ~/ newR;

            // Update t and newT
            int tempT = t;
            t = newT;
            newT = tempT - quotient * newT;

            // Update r and newR
            int tempR = r;
            r = newR;
            newR = tempR - quotient * newR;
        }

        if (r > 1) {
            throw Exception("No inverse exists");
        }

        if (t < 0) {
            t = t + b;
        }

        return t;
    }

    int modExp(int base, int exp, int mod) {
        int result = 1;
        base = base % mod; // Update base if it's more than mod

        while (exp > 0) {
            // If exp is odd, multiply base with the result
            if ((exp % 2) == 1) {
            result = (result * base) % mod;
            }

            // Now exp must be even, so divide it by 2
            exp = exp >> 1;

            // Square the base
            base = (base * base) % mod;
        }

        return result;
    }

    @override
    void encrypt(int data){
        print("Encryption by RSA");

        //generating 2 large random prime numbers
        int p, q;
        var random= Random();
        p= 50+ random.nextInt(101-50);
        q= 50+ random.nextInt(101-50);
        while(prime(p)!=true){
            p= 50+ random.nextInt(101-50);//(50,101) is (min,max) range
        }
        while(!prime(q)){
            q= 50+ random.nextInt(101-50);
        }
        // print("$p $q");

        // p= 61; q= 53;
        int n= p*q;//n= p*q
        int phi_n= (p-1)*(q-1);//phi n= (p-1)*(q-1)
        int e= 17;//common choice
        int d = extendedEuclidean(e, phi_n);
        // print("n= ${n}");
        // print('The value of d is: $d');

        // int cipherText= (data^17)%n;
        int cipherText= modExp(data, e, n);
        print("Ciphertext is: $cipherText");

        print("Enter the numeric data to be decrypted");
        int encryptedRSA= int.parse(stdin.readLineSync()!);
        decrypt(cipherText,d,n);
    }

    @override
    void decrypt(int cipherText,int d, int n){
         print("\nDecryption by RSA"); 
         int data= modExp(cipherText, d, n);
         print("Decrypted message is: ${data}");  
    }
}

void main(){
    var aes= AES();
    print("Enter the string data to be encrypted");
    String data= stdin.readLineSync()!;
    aes.encrypt(data);
    print("\n");
    print("Enter the string data to be decrypted");
    String encryptedData= stdin.readLineSync()!;
    aes.decrypt(encryptedData);

    print("\n\n");

    var rsa= RSA();
    print("Enter the numeric data to be encrypted");
    int dataRSA= int.parse(stdin.readLineSync()!);
    rsa.encrypt(dataRSA);
}