import 'dart:async';

enum FlashLighter { red, yellow, green }

StreamSubscription? streamSubscription;

void main(List<String> args) {
  Stream myStream = Stream.periodic(Duration(seconds: 1), (tick) => tick);

  StreamSubscription = myStream.listen((seconds) {
    if (seconds <= 3) {
      print('Скоро загортмся желтый');
    }
  });
}
