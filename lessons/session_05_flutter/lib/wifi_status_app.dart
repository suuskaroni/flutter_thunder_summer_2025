import 'package:flutter/material.dart';

enum WifiStatusOption { on, off }

class WifiStatusApp extends StatelessWidget {
  final WifiStatusOption mode = WifiStatusOption.off;

  const WifiStatusApp({super.key});

  @override
  Widget build(BuildContext context) {
    String label ;
    Color screenBg;
    bool switchValue;

    //switch

    switch(mode){
      case WifiStatusOption.on:
        label = 'Wifi is on';
        switchValue = true;
      case WifiStatusOption.off:
        label = 'Wifi is off';
        switchValue = false;
        break;
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wifi Status Switch',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
            ) ,),

        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                  mode == WifiStatusOption.on ? Icons.wifi : Icons.wifi_off,
                  color: mode == WifiStatusOption.on ? Colors.blue : Colors.grey
              ),
              SizedBox(
                width: 10,
              ),
              Switch(value: switchValue, onChanged: null),
              Text(
                label,
                style: TextStyle(
                  fontSize: 24,
                  color: mode == WifiStatusOption.on ? Colors.black : Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
