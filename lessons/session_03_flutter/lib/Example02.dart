import 'package:flutter/material.dart';

class Example02 extends StatelessWidget {
  const Example02({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Colors.green,
              width: 100,
              height: 100,
              child: Center(child: Text('1', style: TextStyle(fontSize: 25))),
            ),
            Container(color: Colors.blue, width: 30, height: 30),
            Container(color: Colors.red, width: 30, height: 30),
            Container(color: Colors.purple, width: 30, height: 30),
          ],
        ),
      ],
    );
  }
}
