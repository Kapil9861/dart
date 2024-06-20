void main() {
  print('A1');
  Future(() => print('B'));
  Future(() => print('c'));
  Future.microtask(() => print('A'));
}
