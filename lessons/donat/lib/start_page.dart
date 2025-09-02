import 'package:flutter/material.dart';

class Startpage extends StatefulWidget {
  const Startpage({super.key});

  @override
  State<Startpage> createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF3F3),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,


          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Image.asset('assets/dinosaur.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 50),
              child: SizedBox(
                width: 303,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFDAF2),
                  ),
                  child: Center(
                    child: Text(
                      'Start',
                      style: TextStyle(
                        color: Color(0xFFF57AC8),
                        fontFamily: 'Nunito-Bold',
                        fontWeight: FontWeight.w900,
                        fontSize: 73.14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // child: Column(
      //   child: SizedBox(
      //     width: 303,
      //     height: 85,
      //     child: ElevatedButton(
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Color(0xFFFFDAF2),
      //       ),
      //       onPressed: () {},
      //       child: Center(
      //         child: Text(
      //           'Start',
      //           style: TextStyle(
      //             color: Color(0xFFF57AC8),
      //             fontFamily: 'Nunito-Bold',
      //             fontWeight: FontWeight.w900,
      //             fontSize: 73.14,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
