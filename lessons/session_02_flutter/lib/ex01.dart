import 'package:flutter/material.dart';

class Ex01 extends StatelessWidget {
  const Ex01({super.key});

  @override
  Widget build(BuildContext context) {
    var greeting = 'Hello Thunder';
    var BackgroundColor = Colors.red;
    double fontSize = 40;
    var fontWeight = FontWeight.w700;

    return Center(
      child: Container(
        color: BackgroundColor,
        child: Text(
          greeting,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
