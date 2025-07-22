import 'package:flutter/material.dart';

class SimpleCounterAppStateful extends StatefulWidget {
  const SimpleCounterAppStateful({super.key});

  @override
  State<SimpleCounterAppStateful> createState() =>
      _SimpleCounterAppStatefulState();
}

class _SimpleCounterAppStatefulState extends State<SimpleCounterAppStateful> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 1;
      print(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Stateless Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter Value : $_counter'),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
