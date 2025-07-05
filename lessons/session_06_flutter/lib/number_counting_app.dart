import 'package:flutter/material.dart';

class NumberCountingApp extends StatelessWidget {
  const NumberCountingApp({super.key});
final  int number = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> numList =[];
    for (int i = 1; i <= 10; i++ ){
      numList.add(
          Text(
            '$i'
          ),
      );
    }
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Number Counting App'
        ),
      ),
        body: Padding(padding: EdgeInsets.all(24),
        child: Column(
            children: numList,
        )
          ,),
      ),
    );
  }
}
