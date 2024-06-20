void main() {
  // it doesn't print anything here unitil the value is exactly accessed
  var a = show(5);
  // this will run the show function and print the value
  print(a.last);
  print(a.first);
  print("List");
  var b = showList(5);
  // This runs with or without the access of the List function which proves that the iterator are only run when they are accessed
  print(b.last);

  // also now that the iterator is already accessed now if we access something from it it is run only up to the point it finds the
  //value then stops preserving the storage but may not be time efficient
  print(a.last);
  // The iterator can also be converted to the List so this can be more useful too Like below:
  final c = a.toList(); //with this the function is called once again
  print(c
      .first); // but now as the iterator is not accessed right now but accessed after converting to the list the iterator function will
  print(c.last); // not be called even though the a.last and a.first is called
}

void sub(int a, int b) => a + b;

//It is lazy collection so that it is only generated when something within it is accessed
Iterable<int> show(int n) sync* {
  for (int i = 0; i < n; i++) {
    print(i);
    yield i;
  }
}

List<int> showList(int n) {
  List<int> list = [];
  print("start");
  for (int i = 0; i < n; i++) {
    print(i);
    list.add(i);
  }
  print("end");
  return list;
}
