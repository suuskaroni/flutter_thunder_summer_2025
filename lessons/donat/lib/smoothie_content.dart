import 'package:flutter/material.dart';

import 'ProductCard.dart';

class SmoothieContent extends StatelessWidget {
  const SmoothieContent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      key: const ValueKey('smoothie_grid'),
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 161 / 231,
      children: const [
        ProductCard(
          name: "Blueberry\Strawberry",
          price: "\$36",
          imageUrl: 'https://placehold.co/105x105/A2C8FB/000000?text=Img',
          backgroundColor: Color(0xFFC9E0FF),
          priceBackgroundColor: Color(0xFFA2c8FB),
          priceColor: Color(0xFF2883FF),
        ),
        ProductCard(
          name: "Strawberry",
          price: "\$45",
          imageUrl: 'https://placehold.co/105x105/FFC3C3/000000?text=Img',
          backgroundColor: Color(0xFFFFD5D5),
          priceBackgroundColor: Color(0xFFFFC3C3),
          priceColor: Color(0xFFFA8484),
        ),
        ProductCard(
          name: "island green",
          price: "\$65",
          imageUrl: 'https://placehold.co/105x105/B6FFB4/000000?text=Img',
          backgroundColor: Color(0xFFD1FFD0),
          priceBackgroundColor: Color(0xFFB6FFB4),
          priceColor: Color(0xFF72CD70),
        ),
        ProductCard(
          name: "banana",
          price: "\$35",
          imageUrl: 'https://placehold.co/105x105/FBFD83/000000?text=Img',
          backgroundColor: Color(0xFFFDFFB9),
          priceBackgroundColor: Color(0xFFFBFD83),
          priceColor: Color(0xFFD3D55A),
        ),
      ],
    );
  }
}