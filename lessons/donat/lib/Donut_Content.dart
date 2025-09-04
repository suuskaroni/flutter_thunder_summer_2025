import 'package:flutter/material.dart';
class DonutContent extends StatelessWidget {
  const DonutContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      key: ValueKey('donut_content'),
      child: Text(
        'Donut products will be shown here!',
        style: TextStyle(
          fontSize: 18,
          fontFamily: 'Nunito-Bold',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
