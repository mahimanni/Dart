import 'dart:io';

//abstract class as interface
abstract class Searchable{
    void search(String keyword);
}

class Document implements Searchable{
    String textDoc= "Empty";
    void input(){
        print("Enter the text of the document");
        textDoc= stdin.readLineSync() ?? "Empty";
    }
    String inputKeywordToSearch(){
        print("Enter the keyword to be searched");
        String keyword= stdin.readLineSync() ?? "Nothing";
        return keyword;
    }

    @override
    void search(String keyword){
        print("search method of the class Document");

        int flag=0;
        for(int i=0; i<textDoc.length;i++){
            if(textDoc[i]==keyword[0]){
                int j=i, k=0;
                while(k<keyword.length && textDoc[j]==keyword[k]){
                    j++;
                    k++;
                }
                if(k==keyword.length){
                    flag=1;
                    print("Keyword ${keyword} found at position ${i+1}");
                }
            }
        }
        if(flag==0){
            print("Keyword ${keyword} does not exists in this text document");
        }
    }
}

class WebPage implements Searchable{
    void input(){
        print("Enter the text of the WebPage");
    }
    @override
    void search(String keyword){
        print("search method of the class WebPage");
    }
}

void main(){
    var doc= Document();
    doc.input();
    String key= doc.inputKeywordToSearch();
    doc.search(key);

    print("\n");

    var web= WebPage();
    web.search("mahi");
}