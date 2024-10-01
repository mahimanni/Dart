void main(){
    Set<int> s= new Set<int>();
    s.add(100);
    s.add(200);
    s.add(100);//duplicate elt added only once

    print(s);//{100, 200}
    print("Default Implementation: ${s.runtimeType}");//Default Implementation: _Set<int>
    print(s.first);

    for(var num in s){
        print(num);
    }

    //HashSet
    //var set= HashSet<String>();
    // set.add("hello");
    // set.add("Wlcm");
    // set.add("by");

    // print(set);
}