import 'dart:async';

void main() {
  print('1');
  scheduleMicrotask(() => print('2'));
  Future.delayed(const Duration(seconds: 1), () => print('3'));
  Future(
    () => print('4'),
  ).then((_) => print('5')).then((_) {
    print('6');
    scheduleMicrotask(() => print('7'));
  }).then((_) => print('8'));

  scheduleMicrotask(() => print('9'));

  Future(
    () => print('10'),
  ).then((_) => Future(() => print('11'))).then((_) => print('12'));

  Future(() => print('13'));

  scheduleMicrotask(() => print('14'));
  print('15');
}
