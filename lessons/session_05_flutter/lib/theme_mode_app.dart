import 'package:flutter/material.dart';

enum ThemeModeOption { dark, light }

class ThemeModeApp extends StatelessWidget {
  final ThemeModeOption mode = ThemeModeOption.light;

  const ThemeModeApp({super.key});

  @override
  Widget build(BuildContext context) {
    String label ;
    Color screenBg;
    bool switchValue;

    //switch

    switch(mode){
      case ThemeModeOption.light:
        label = 'Light Mode';
        screenBg = Colors.white;
        switchValue = false;
      case ThemeModeOption.dark:
        label = 'Dark Mode';
        screenBg = Colors.black;
        switchValue = true;
        break;
    }

    return MaterialApp(
      home: Scaffold(
      backgroundColor: screenBg,
        appBar: AppBar(
          title: Text('Theme mode Switch'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                mode == ThemeModeOption.dark ? Icons.dark_mode : Icons.light_mode,
                color: mode == ThemeModeOption.dark ? Colors.white : Colors.black
              ),
              SizedBox(
                width: 10,
              ),
              Switch(value: switchValue, onChanged: null),
              Text(
                label,
                style: TextStyle(
                  fontSize: 24,
                  color: mode == ThemeModeOption.dark ? Colors.white : Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
