import 'dart:io';
int id= 0;//global variable
abstract class Accounts{
    String name= "";
    double interest= 0.0;
    double minBalance= 0.0;

    void deposit(int amt);
    void withdraw(int amt);
    void calInterest();
    void viewBalance();
    void menu();
}

class SavingsAccount{
    String name= "";
    double interest= 0.0;
    double minBalance= 0.0;

    @override
    void menu(){
        
        id++;

    }

    @override
    void deposit(int amt){

    }

    @override
    void withdraw(int amt){

    }

    @override
    void calInterest(){

    }

    @override
    void viewBalance(){

    }
}

class CurrentAccount{
    @override
    void menu(){

    }

    @override
    void deposit(int amt){

    }

    @override
    void withdraw(int amt){

    }

    @override
    void calInterest(){

    }

    @override
    void viewBalance(){
        
    }
}

void main(){
    print("BANK\nEnter 1 for opening Savings Account\nEnter 2 for opening Current Account");
    int choice= int.parse(stdin.readLineSync()!);
    switch(choice){
        case 1:
            List<SavingsAccount> s= [];
            var sav= SavingsAccount();
            
            print("Your Id is: $id");
            id+=1;

            print("Enter your name:");
            String userName= stdin.readLineSync()!;
            sav.name= userName;
            // sav.menu();
            s.add(sav);
            print(s[0]);
            break;

        case 2:
            List<CurrentAccount> c= [];
            var cur= CurrentAccount();
            c.add(cur);
            print("Your Id is: $id");
            id+=1;
            cur.menu();
            break;

        default:
            print("Invalid choice entered");
    }
}