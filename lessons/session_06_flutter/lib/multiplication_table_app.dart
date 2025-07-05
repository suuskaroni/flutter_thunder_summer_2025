import 'package:flutter/material.dart';

class MultiplicationTableApp extends StatelessWidget {
  const MultiplicationTableApp({super.key});
  final int number = 5;
  @override
  Widget build(BuildContext context) {
    List<Widget> tableRows = [];
    for (int i = 1; i <= 10; i++) {
      tableRows.add(
        Text(' ${number} x $i = ${number * i}', style: TextStyle(fontSize: 18)),
      );
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Multiplication Table')),
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: tableRows,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
