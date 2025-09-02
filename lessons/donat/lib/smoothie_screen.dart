import 'package:flutter/material.dart';

class SmoothieScreen extends StatelessWidget {
  const SmoothieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3F3),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFF3F3),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(right: 220, top: 20),
            child: Center(
              child: Text('I want to eat', style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: 'Nunito-Bold'
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
