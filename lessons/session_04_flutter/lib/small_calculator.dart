import 'package:flutter/material.dart';

class SmallCalculator extends StatelessWidget {
  const SmallCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Small Calculator')),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        'AC',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '+/-',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                      child: Text(
                        '%',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '/',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '7',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '8',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '9',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '4',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '5',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '6',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        'x',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '2',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text(
                        '=',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
