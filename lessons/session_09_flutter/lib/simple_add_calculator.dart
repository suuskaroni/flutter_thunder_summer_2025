import 'package:flutter/material.dart';

class SimpleAddCalculator extends StatefulWidget {
  const SimpleAddCalculator({super.key});

  @override
  State<SimpleAddCalculator> createState() => _SimpleAddCalculatorState();
}

class _SimpleAddCalculatorState extends State<SimpleAddCalculator> {
  int input1 = 10;
  int input2 = 23;
  int result = 0;

  void addSum() {
    setState(() {
      result = input2 + input1;
      print(result);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Small Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$input1 + $input2 Result is = ' ,),
            Text('$result'),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: addSum,
             child: Text('Нийлбэрийг тооцоолох'))
          ],
        ),
      ),
    );
  }
}
