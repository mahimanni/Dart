class Text {
  final String content;
  const Text({this.content = ''});
}

void main() {
  Text text1 = const Text(content: 'Hello');
  print(text1.content);
  print("text1 hash code is: ${text1.hashCode}\n");

  Text text2 = const Text(content: 'Hello');
  print(text2.content);
  print("text2 hash code is: ${text2.hashCode}\n");
  // text1 and text2 has the same hash code.
  // This is because text1 and text2 are constant objects. The hash code of a constant object is the same. 
  // This is because the hash code of a constant object is computed at compile time

  Text text3= Text(content: 'Hello world');
  print(text3.content);
  print("text3 hash code is: ${text3.hashCode}\n");

  Text text4= Text(content: 'Hello world');
  print(text4.content);
  print("text4 hash code is: ${text4.hashCode}");
  // The hash code of a non-constant object is computed at run time. 
  // This is why text3 and text4 have different hash code.
}
