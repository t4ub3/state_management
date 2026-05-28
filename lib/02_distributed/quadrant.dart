import 'package:flutter/material.dart';

void foo() {}

class Quadrant extends StatelessWidget {
  final int counter;
  const Quadrant({
    super.key,
    required this.counter,
    required this.increment,
    required this.decrement,
  });

  @override
  Widget build(Object context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          IconButton(
            color: Colors.green[400],
            onPressed: increment,
            icon: Icon(Icons.arrow_upward),
          ),
          Text(
            counter.toString(),
            style: TextStyle(fontSize: 18, fontWeight: FontWeight(500)),
          ),
          IconButton(
            color: Colors.red[300],
            onPressed: decrement,
            icon: Icon(Icons.arrow_downward),
          ),
        ],
      ),
    );
  }

  final VoidCallback increment;
  final VoidCallback decrement;
}
