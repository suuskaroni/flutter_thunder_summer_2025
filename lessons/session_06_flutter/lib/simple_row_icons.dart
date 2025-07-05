import 'package:flutter/material.dart';

class SimpleRowIcons extends StatelessWidget {
  const SimpleRowIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Simple Row Icons')),
        body: Center(
          // padding: EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.favorite, color: Colors.pink, size: 35),
              Icon(Icons.favorite, color: Colors.pink, size: 35),
              Icon(Icons.favorite, color: Colors.pink, size: 35),
              Icon(Icons.favorite, color: Colors.pink, size: 35),
              Icon(Icons.favorite, color: Colors.pink, size: 35),
            ],
          ),
        ),
      ),
    );
  }
}
