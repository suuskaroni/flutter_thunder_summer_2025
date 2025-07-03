import 'package:flutter/material.dart';

class GradeApp extends StatelessWidget {
  const GradeApp({super.key});
  final int grade = 30; //change to test

  @override
  Widget build(BuildContext context) {
    final gResult = (grade >= 90) ? 'A avsn bnaa'
        : (grade >= 80) ? 'B Avsan bnaa'
        : (grade >= 70) ? 'C avsan bnaa'
        : (grade >= 60) ? 'D avchlaashde ho'
        : 'Za arai yu ho';
    return MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
          title: Text('Grade Evaluator'),
        ),
        body: Center(
          child: Text(
            'Your final is $gResult',
            style: TextStyle(
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      )
    );
  }
}
