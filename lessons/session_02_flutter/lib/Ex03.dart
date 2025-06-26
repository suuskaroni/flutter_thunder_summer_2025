import 'package:flutter/material.dart';
class Ex03 extends StatelessWidget {
  const Ex03({super.key});

  @override
  Widget build(BuildContext context) {
    var td1 = "Monday";
    var td2 = "Tuesday";
    var td3 = "Wednesday";
    var td4 = "Thursday";
    var td5 = "Friday";
    return Container(
      child: Column(
        children: [
         Text(td1),
          Text(td2),
          Text(td3),
          Text(td4),
          Text(td5)
        ],
      ),
    );
  }
}
