import 'dart:async';

void main() async {
  //streams
  //countiosly listen to values request to subscribe
  // countdown().listen((val)=>print(val),onDone:()=>print("finished streaming"));

  //periodic().listen((val)=>print(val));

  count();
}

Stream<int> countdown() async* {
  for (int i = 5; i > 0; i--) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> periodic() {
  final controller = StreamController<int>();
  controller.sink.add(1);
  controller.stream.listen((val) => print(val));

  return Stream.periodic(Duration(seconds: 1), (val) {
    return val;
  });
}

//stream controller
void count() {
  final controller = StreamController<int>();
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.close();
  controller.sink.addError("danger danger");

  controller.stream
      .listen((val) => print(val), onError: (error) => print(error));
  controller.close();
}
