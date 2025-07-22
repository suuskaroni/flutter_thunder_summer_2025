import 'package:flutter/material.dart';

class TextChangerApp extends StatefulWidget {
  const TextChangerApp({super.key});

  @override
  State<TextChangerApp> createState() => _TextChangerAppState();
}

class _TextChangerAppState extends State<TextChangerApp> {
  String Text1 = 'Sainuu Flutter';
  bool isOriginal = true;

  void stateFulWidget() {
    setState(() {
       if(isOriginal){
         Text1 = 'Welcome to Mongolia';
       }else{
         Text1 = 'Mongolia to Welcome';
       }
         isOriginal = ! isOriginal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello Flutter !')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Text1,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: stateFulWidget,
              child: Text('Change It', style: TextStyle(fontSize: 20)),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
