abstract class Encryptable{
    void encrypt(String data);//for encryption operations
    void decrypt(String encryptedData);//for decryption operations
}

class AES implements Encryptable{
    @override
    void encrypt(String data){
        print("Encryption by AES");
    }

    @override
    void decrypt(String encryptedData){
        print("Decryption by AES");
    }
}

class RSA{
     @override
    void encrypt(String data){
        print("Encryption by RSA");
    }

    @override
    void decrypt(String encryptedData){
         print("Decryption by RSA");     
    }
}

void main(){
    String data= "hello";
    String encryptedData= "bello";

    var aes= AES();
    aes.encrypt(data);
    aes.decrypt(encryptedData);

    var rsa= RSA();
    rsa.encrypt(data);
    rsa.decrypt(encryptedData);
}