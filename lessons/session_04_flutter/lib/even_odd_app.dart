import 'package:flutter/material.dart';

class EvenOddApp extends StatelessWidget {
  const EvenOddApp({super.key});
  
  final int number = 7;
  
  @override
  Widget build(BuildContext context) {
    //result  гэдэг хувьсагчид number гэдэг
    //хувьсагч 2-т хуваагддаг эсэхээс шалтгаалан
    // Ternary operator ашиглаад 'Even' эсвэл
    // 'Odd' гэдэг текст хадгална. Тэгээд текст дээр
    // main.dart дотор энэхүү Widget App-aa дуудаж харуулах

    final result = ( number % 2 == 0 ) ? 'Even' : 'Odd' ;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Even or Odd'),
        ),
        body: Center(
          child: Text(
            '$number is $result',
            style: TextStyle(
              fontSize: 30,
            )
          ),
        ),
      ),
    );
  }
}
