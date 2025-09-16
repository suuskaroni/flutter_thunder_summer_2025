import 'package:donat/FoodMenuPage.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  void navigateToPreviousPage (BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => FoodMenuPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            navigateToPreviousPage(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black, size: 28),
        ),
        actions: [],
        title: Text('Blueberry Strawberry', style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w800, fontFamily: 'Nunito-Bold'
        ),),
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
        child: Container(
                  height: 283,
                  color: Color(0xFFE6C3C3),
                ),
                ),
                Center(
                 child:
                     Padding(padding: const EdgeInsets.only(top: 40, left: 40),
                 child:
                 Image.asset(
                   'assets/smoothie.png',
                   width: 200,
                   height: 200,
                   fit: BoxFit.cover,
                     )
                 ),
                ),
                Container(
                  height: 250,
                  decoration: ShapeDecoration(shape: RoundedRectangleBorder(),color: Colors.pink),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
