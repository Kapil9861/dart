import 'dart:async';

void main() {
  // Stream.periodic(const Duration(seconds: 1), (x) => x);
  // Stream.periodic(const Duration(seconds: 2), (x) => -x);
  // Stream.fromFutures([Future(() => 3), Future.value(2)]).listen(print);

  final StreamController streamController = new StreamController<int>();
  final streamSubscription = streamController.stream.listen(print);
  var value = 0;
  Timer.periodic(const Duration(seconds: 1), (timer) {
    if (value == 5) {
      timer.cancel();
      streamController.close();
      streamSubscription.cancel();
    } else {
      print(value++);
    }
  });
}
