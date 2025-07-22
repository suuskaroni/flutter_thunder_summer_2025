import 'package:flutter/material.dart';

class StarRatingApp extends StatefulWidget {
  const StarRatingApp({super.key});

  @override
  State<StarRatingApp> createState() => _StarRatingAppState();
}

class _StarRatingAppState extends State<StarRatingApp> {
  bool isClicked = true;
  final Star = Icon(Icons.star);
  final emptyStar = Icon(Icons.star_border_purple500_outlined);

  void submit (){
    setState(() {
      isClicked = !isClicked;
      print(isClicked);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Star Rating ')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ElevatedButton(onPressed: submit ? Icons.star : Icons.star_border, child: Icon(Icons.star),),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.star)),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.star)),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.star)),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.star)),
          ],
        ),
      ),
    );
  }
}
