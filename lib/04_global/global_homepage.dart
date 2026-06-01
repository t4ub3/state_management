import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management/04_global/counter_provider.dart';
import 'package:state_management/04_global/quadrant_global.dart';

class GlobalHomepage extends ConsumerWidget {
  const GlobalHomepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counterTopLeft = ref.watch(counterTopLeftProvider);
    final int counterTopRight = ref.watch(counterTopRightProvider);
    final int counterBottomLeft = ref.watch(counterBottomLeftProvider);
    final int counterBottomRight = ref.watch(counterBottomRightProvider);

    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      padding: EdgeInsets.all(20),
      children: [
        QuadrantGlobal(
          counter: counterTopLeft,
          increment: ref.read(counterBottomRightProvider.notifier).increment,
          decrement: ref.read(counterBottomRightProvider.notifier).decrement,
        ),
        QuadrantGlobal(
          counter: counterTopRight,
          increment: ref.read(counterBottomLeftProvider.notifier).increment,
          decrement: ref.read(counterBottomLeftProvider.notifier).decrement,
        ),
        QuadrantGlobal(
          counter: counterBottomLeft,
          increment: ref.read(counterTopRightProvider.notifier).increment,
          decrement: ref.read(counterTopRightProvider.notifier).decrement,
        ),
        QuadrantGlobal(
          counter: counterBottomRight,
          increment: ref.read(counterTopLeftProvider.notifier).increment,
          decrement: ref.read(counterTopLeftProvider.notifier).decrement,
        ),
      ],
    );
  }
}
