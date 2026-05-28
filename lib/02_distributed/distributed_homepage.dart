import 'package:flutter/material.dart';
import 'package:state_management/02_distributed/quadrant.dart';

class DistributedHomepage extends StatefulWidget {
  const DistributedHomepage({super.key});

  @override
  State<DistributedHomepage> createState() => _DistributedHomepageState();
}

class _DistributedHomepageState extends State<DistributedHomepage> {
  int _counterTopLeft = 0;
  int _counterTopRight = 0;
  int _counterBottomLeft = 0;
  int _counterBottomRight = 0;

  void _incrementCounterTopLeft() {
    setState(() {
      _counterTopLeft++;
    });
  }

  void _incrementCounterTopRight() {
    setState(() {
      _counterTopRight++;
    });
  }

  void _incrementCounterBottomLeft() {
    setState(() {
      _counterBottomLeft++;
    });
  }

  void _incrementCounterBottomRight() {
    setState(() {
      _counterBottomRight++;
    });
  }

  void _decrementCounterTopLeft() {
    setState(() {
      _counterTopLeft--;
    });
  }

  void _decrementCounterTopRight() {
    setState(() {
      _counterTopRight--;
    });
  }

  void _decrementCounterBottomLeft() {
    setState(() {
      _counterBottomLeft--;
    });
  }

  void _decrementCounterBottomRight() {
    setState(() {
      _counterBottomRight--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Overengineered Counter'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        padding: EdgeInsets.all(20),
        children: [
          Quadrant(
            counter: _counterTopLeft,
            increment: _incrementCounterBottomRight,
            decrement: _decrementCounterBottomRight,
          ),
          Quadrant(
            counter: _counterTopRight,
            increment: _incrementCounterBottomLeft,
            decrement: _decrementCounterBottomLeft,
          ),
          Quadrant(
            counter: _counterBottomLeft,
            increment: _incrementCounterTopRight,
            decrement: _decrementCounterTopRight,
          ),
          Quadrant(
            counter: _counterBottomRight,
            increment: _incrementCounterTopLeft,
            decrement: _decrementCounterTopLeft,
          ),
        ],
      ),
    );
  }
}
