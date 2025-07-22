import 'package:flutter/material.dart';
class VisibilityChangerApp extends StatefulWidget {
  const VisibilityChangerApp({super.key});

  @override
  State<VisibilityChangerApp> createState() => _VisibilityChangerAppState();
}

class _VisibilityChangerAppState extends State<VisibilityChangerApp> {
   String visible = 'This text is visible';
   String result = '';
  bool onPress = true;

  void changer() {
    setState(() {
    onPress = !onPress;
    print(onPress);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VisibilityChanger'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            onPress ? Text('This text can be hidden!', style: TextStyle(
              fontSize: 28,
              color: Colors.teal.shade800,
              fontWeight: FontWeight.bold
            ),) : Container(), SizedBox(height: 50),
            ElevatedButton(onPressed: changer, child: Text(onPress ? 'Hide Text' : 'Show Text', style: TextStyle(
              fontSize: 20,
            ),),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 20)),
            ),
          ],
            ),
        ),
      );
  }
}
