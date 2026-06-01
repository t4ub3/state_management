import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterTopLeftNotifier extends Notifier<int> {
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

final counterTopLeftProvider = NotifierProvider<CounterTopLeftNotifier, int>(
  CounterTopLeftNotifier.new,
);

class CounterTopRightNotifier extends Notifier<int> {
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

final counterTopRightProvider = NotifierProvider<CounterTopRightNotifier, int>(
  CounterTopRightNotifier.new,
);

class CounterBottomLeftNotifier extends Notifier<int> {
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

final counterBottomLeftProvider =
    NotifierProvider<CounterBottomLeftNotifier, int>(
      CounterBottomLeftNotifier.new,
    );

class CounterBottomRightNotifier extends Notifier<int> {
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

final counterBottomRightProvider =
    NotifierProvider<CounterBottomRightNotifier, int>(
      CounterBottomRightNotifier.new,
    );
