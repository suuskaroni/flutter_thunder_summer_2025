import 'package:flutter/material.dart';

enum PaymentMode { card, cash }

class PaymentModeApp extends StatelessWidget {
  final PaymentMode mode = PaymentMode.cash;

  const PaymentModeApp({super.key});

  @override
  Widget build(BuildContext context) {
    String label ;
    Color screenBg;
    bool switchValue;

    //switch

    switch(mode){
      case PaymentMode.cash:
        label = 'Cash Payment';
        switchValue = true;
      case PaymentMode.card:
        label = 'Card Payment';
        switchValue = false;
        break;
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Payment Mode Switch',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ) ,),

        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                  mode == PaymentMode.cash ? Icons.money : Icons.credit_card,
                  color: mode == PaymentMode.cash ? Colors.green : Colors.amberAccent
              ),
              SizedBox(
                width: 10,
              ),
              Switch(value: switchValue, onChanged: null),
              Text(
                label,
                style: TextStyle(
                  fontSize: 24,
                  color: mode == PaymentMode.cash ? Colors.black : Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
