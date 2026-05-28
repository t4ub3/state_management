import 'package:flutter/material.dart';

class LocalHomepage extends StatefulWidget {
  const LocalHomepage({super.key});

  @override
  State<LocalHomepage> createState() => _LocalHomepageState();
}

class _LocalHomepageState extends State<LocalHomepage> {
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
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                IconButton(
                  color: Colors.green[400],
                  onPressed: _incrementCounterBottomRight,
                  icon: Icon(Icons.arrow_upward),
                ),
                Text(
                  _counterTopLeft.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight(500)),
                ),
                IconButton(
                  color: Colors.red[300],
                  onPressed: _decrementCounterBottomRight,
                  icon: Icon(Icons.arrow_downward),
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                IconButton(
                  color: Colors.green[400],
                  onPressed: _incrementCounterBottomLeft,
                  icon: Icon(Icons.arrow_upward),
                ),
                Text(
                  _counterTopRight.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight(500)),
                ),
                IconButton(
                  color: Colors.red[300],
                  onPressed: _decrementCounterBottomLeft,
                  icon: Icon(Icons.arrow_downward),
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                IconButton(
                  color: Colors.green[400],
                  onPressed: _incrementCounterTopRight,
                  icon: Icon(Icons.arrow_upward),
                ),
                Text(
                  _counterBottomLeft.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight(500)),
                ),
                IconButton(
                  color: Colors.red[300],
                  onPressed: _decrementCounterTopRight,
                  icon: Icon(Icons.arrow_downward),
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                IconButton(
                  color: Colors.green[400],
                  onPressed: _incrementCounterTopLeft,
                  icon: Icon(Icons.arrow_upward),
                ),
                Text(
                  _counterBottomRight.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight(500)),
                ),
                IconButton(
                  color: Colors.red[300],
                  onPressed: _decrementCounterTopLeft,
                  icon: Icon(Icons.arrow_downward),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
