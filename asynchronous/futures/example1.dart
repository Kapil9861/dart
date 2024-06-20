void main() {
  print('Starting');
  Future(() => 1).then(print);
  Future(() => Future(() => 2)).then(print);

  // Delayed
  Future.delayed(const Duration(seconds: 3), () => 3).then(print);
  Future.delayed(const Duration(seconds: 4), () => Future(() => 4)).then(print);
  //value
  Future.value(5).then(print);
  Future.value(Future(() => 6)).then(print);

  // sync
  Future.sync(() => 7).then(print);
  Future.sync(() => Future(() => 8)).then(print);

  // microtasks
  Future.microtask(() => 9).then(print);
  Future.microtask(() => Future(() => 10)).then(print);

  Future(
    () => 11,
  ).then(print);
  Future(
    () => Future(() => 12),
  ).then(print);

  print("end");
}
