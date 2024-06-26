import 'dart:async';

void main() {
  asyncGenerator().listen(
    print,
    onDone: () => print('Completed'),
  );
  // exactMomentWhenValueArrivesInStream();
}

var negativeStream =
    Stream<int>.periodic(const Duration(seconds: 1), (x) => -x);

void exactMomentWhenValueArrivesInStream() async {
  var value = 0;
  final streamController = StreamController<int>();
  Timer.periodic(const Duration(seconds: 0), (timer) {
    if (value == 5) {
      streamController.close();
    } else {
      streamController.add(value++);
    }
  });
  var max = 0;
  await streamController.stream.forEach((value) {
    max = (value > max) ? value : max;
  });
  print(max);
}

// Creating a stream of values from the generator as done for synchronous streams
Stream<int> asyncGenerator() async* {
  for (var i = 0; i < 10; i++) {
    yield i;
  }
  yield* negativeStream.takeWhile((value) => value > -10);
}
