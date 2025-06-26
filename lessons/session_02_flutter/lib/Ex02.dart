import 'package:flutter/material.dart';
/**
 * Ex02 гэдэг stateless widget-г stless  гэдэг комманд-р үүсгэх
 */
class  Ex02 extends StatelessWidget {
  const Ex02 ({super.key});

  @override
  Widget build(BuildContext context) {
    var backgroundColor = Colors.deepPurpleAccent;
    var fontColor = Colors.white;
    var fontWeight = FontWeight.bold;
    var fontSize = 30.0;
    var bio = 'Намайг Сөсө гэдэг.';
    return  Center(
      child: Container(
        color: backgroundColor,
        child: Text(
          bio,
          style: TextStyle(
            color: fontColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );;
  }
}
