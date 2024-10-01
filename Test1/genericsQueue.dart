import 'dart:collection';
void main(){
    Queue<int> q= new Queue<int>();
    print("Default implementation ${q.runtimeType}");
    q.addLast(100);
    q.addLast(300);
    q.addLast(500);
    q.removeFirst();

    print(q);
    for(int i in q){
        print(i);
    }
}