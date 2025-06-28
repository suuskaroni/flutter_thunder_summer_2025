import 'package:flutter/material.dart';

class Example01 extends StatelessWidget {
  const Example01({super.key});

  @override
  Widget build(BuildContext context) {
    String Text1 = 'Text1';
    String Text2 = 'Text2';
    String Text3 = 'Text3';
    String Text4 = 'Text4';
    String Text5 = 'Text5';
    String Text6 = 'Text6';
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Text1, style: TextStyle(fontSize: 30)),
            Text(Text2, style: TextStyle(fontSize: 30)),
            Text(Text3, style: TextStyle(fontSize: 30)),
            Text(Text4, style: TextStyle(fontSize: 30)),
            Text(Text5, style: TextStyle(fontSize: 30)),
            Text(Text6, style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
