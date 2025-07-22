import 'package:flutter/material.dart';

class ColorChangerScreenApp extends StatefulWidget {
  const ColorChangerScreenApp({super.key});

  @override
  State<ColorChangerScreenApp> createState() => _ColorChangerScreenAppState();
}

class _ColorChangerScreenAppState extends State<ColorChangerScreenApp> {
  List<Color> _colors = [Colors.black,Colors.red,Colors.green,Colors.purple,Colors.orange];
  int _currentColorIndex = 0 ;
  String limit = 'Байгаа өнгө дууссан байна.';
  void _colorChanger () {
    setState(() {
     _currentColorIndex = (_currentColorIndex + 1) % _colors.length;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Changer'),
      ),backgroundColor: _colors[_currentColorIndex],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Current Background color is ${_colors[_currentColorIndex]} ', style: TextStyle(color: Colors.white),),
          ElevatedButton(onPressed: _colorChanger, child: Text('Color Changer'))
          ],
        ),
      ),
    );
  }
}
