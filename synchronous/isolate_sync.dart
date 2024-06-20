void main() {
  // it doesn't print anything here unitil the value is exactly accessed
  var a = show(5);
  // this will run the show function and print the value
  print(a.last);
}

void sub(int a, int b) => a + b;

Iterable<int> show(int n) sync* {
  for (int i = 0; i < n; i++) {
    // executes both of these yield (return types)
    // if (i < 0) {
    //   yield i;
    // }
    print(i);
    yield i;
  }
}
