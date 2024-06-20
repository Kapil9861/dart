void main() {
  final container = Iterable<int>.generate(3);
  print(container.elementAt(1));
  List<int> list = [1, 2, 3, 4, 4, 5, 6, 7];
  final container1 = list.where((index) => index.isEven);
  print(container1);
}
