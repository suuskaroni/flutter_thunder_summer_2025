import 'package:flutter/material.dart';

import 'ProductCard.dart';
import './data/smoothies.dart';

class SmoothieContent extends StatelessWidget {
  const SmoothieContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> smoothieCards = [];

    for (var i = 0; i < smoothies.length; i++) {
      print(smoothies[i]['price']);
      smoothieCards.add(
        ProductCard(
          name: smoothies[i]['name'].toString(),
          price: smoothies[i]['price'].toString(),
          imageUrl: smoothies[i]['imageUrl'].toString(),
          priceColor: Color(int.parse(smoothies[i]['priceColor'].toString())),
          priceBackgroundColor: Color(
            int.parse(smoothies[i]['priceBackgroundColor'].toString()),
          ),
          backgroundColor: Color(int.parse(smoothies[i]['backgroundColor'].toString())),
        ),
      );
    }
    return GridView.count(
      key: const ValueKey('smoothie_grid'),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 161 / 231,
      children: smoothieCards,
    );
  }
}
