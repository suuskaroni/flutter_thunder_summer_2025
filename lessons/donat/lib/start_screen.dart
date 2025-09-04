import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: const Color(0xFFFFF2F2)),
          child: Stack(
            children: [
              Positioned(
                left: 84,
                top: 226,
                child: Container(
                  width: 208.86,
                  height: 208.86,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/dinosaur.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 489,
                child: Container(
                  width: 303,
                  height: 85,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFDAF1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 95,
                top: 499,
                child: Text(
                  'Start',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFF57AC8),
                    fontSize: 73.14,
                    fontFamily: 'Nunito-Bold',
                    fontWeight: FontWeight.w900,
                    height: 0.89,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
