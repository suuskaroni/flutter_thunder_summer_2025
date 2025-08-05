import 'package:session_10_flutter/text_layout.dart';

import 'immutable_widget.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: const Center(
            child: Text("I'm a drawer"),
        ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Hello basic screen'),
        actions: [
          Padding(padding: EdgeInsets.all(10.0),
          child: Icon(Icons.edit),)
        ],
      ),
      body: Column(
        children: [
          AspectRatio(aspectRatio: 1.0,
        child: ImmutableWidget(),
        ),
          TextLayout()
        ],
      ),
    );
  }
}
