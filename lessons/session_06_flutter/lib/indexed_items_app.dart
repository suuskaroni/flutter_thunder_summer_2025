import 'package:flutter/material.dart';

class IndexedItemsApp extends StatelessWidget {
  const IndexedItemsApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits = ['Apple', 'Banana', 'Mango', 'Orange'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fruit List'
          ),
        ),
        body: Padding(padding: EdgeInsets.all(24),
          child: Column(
            children: fruits,
          ),
        ),
      ),
    );
  }
}
