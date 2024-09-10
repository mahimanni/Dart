typedef CompareFunction<T>= int Function(T a, T b);
int compareInt(int a, int b){
  return a.compareTo(b);
}
void main(){
  CompareFunction<int> compare= compareInt;
  print(compare(5,10));
}