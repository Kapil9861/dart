void main() {
  final container = showNegative(5);
  print(container.last);
  print(container.first);
  print(container);
}

Iterable<int> show(int n) sync* {
  for (int i = 0; i < n; i++) {
    print(i);
    yield i;
  }
}

Iterable<int> showNegative(int n) sync* {
  print("negative");
  for (int i = 0; i < n; i++) {
    print('${-i}');
    yield -i;
  }
  yield* show(n);
  print("negative ended");
}
