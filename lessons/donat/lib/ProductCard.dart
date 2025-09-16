import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;
  final Color backgroundColor;
  final Color priceBackgroundColor;
  final Color priceColor;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.priceColor,
    required this.priceBackgroundColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    print("${this.price} Smoothei price");
    print(imageUrl);
    print(backgroundColor);
    return GestureDetector(
      onTap: () {print('Clicked');},
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: backgroundColor,
        ),
        child: Stack(
          children: [
            // Price Tag
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 58,
                height: 37,
                decoration: ShapeDecoration(
                  color: priceBackgroundColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    '\$${price}',
                    style: TextStyle(
                      color: priceColor,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  // Padding(padding: const EdgeInsets.only(left: 0),
                  Center(
                    child: Image.asset(
                      imageUrl,
                      width: 130.86,
                      height: 129,
                      fit: BoxFit.cover,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35, top: 10),
                    child: Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Nunito-Bold',
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Spacer(flex: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.favorite_border, size: 20),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.add, size: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
