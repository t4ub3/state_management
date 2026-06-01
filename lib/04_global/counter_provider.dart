import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends Notifier<int> {
  @override
  int build() => 0; // initial value

  void increment() => state++;
  void decrement() {
    if (state > 0) {
      state--;
    }
  }

  void reset() => state = 0;
  void set(int value) => state = value;
}

final counterTopLeftProvider = NotifierProvider<CounterNotifier, int>(
  CounterNotifier.new,
);

final counterTopRightProvider = NotifierProvider<CounterNotifier, int>(
  CounterNotifier.new,
);

final counterBottomLeftProvider = NotifierProvider<CounterNotifier, int>(
  CounterNotifier.new,
);

final counterBottomRightProvider = NotifierProvider<CounterNotifier, int>(
  CounterNotifier.new,
);
