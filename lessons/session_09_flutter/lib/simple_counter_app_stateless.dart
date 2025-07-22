import 'package:flutter/material.dart';
class SimpleCounterAppStateless extends StatelessWidget {
  const SimpleCounterAppStateless({super.key});
  @override
  Widget build(BuildContext context) {
  int _counter = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Stateless Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter Value : $_counter'),
            ElevatedButton(onPressed: () {
              _counter = _counter + 1;
              print(_counter);
            }, child: Text('Increment'))
          ],
        ),
      ),
    );
  }
}
