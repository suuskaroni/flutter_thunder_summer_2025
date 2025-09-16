import 'package:donat/ProductCard.dart';
import 'package:flutter/material.dart';
import 'package:donat/data/donuts.dart';
class DonutContent extends StatelessWidget {
  const DonutContent({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> donutCards = [];

    for (var i = 0; i < donuts.length; i++) {
      donutCards.add(
        ProductCard(
          name: donuts[i]['name'].toString(),
          price: donuts[i]['price'].toString(),
          imageUrl: donuts[i]['imageUrl'].toString(),
          priceColor: Color(int.parse(donuts[i]['priceColor'].toString())),
          priceBackgroundColor: Color(
            int.parse(donuts[i]['priceBackgroundColor'].toString()),
          ),
          backgroundColor: Color(int.parse(donuts[i]['backgroundColor'].toString())),
        ),
      );
    }
    return GridView.count(
      key: const ValueKey('smoothie_grid'),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 161 / 231,
      children: donutCards,
    );
  }
}

