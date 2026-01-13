import 'package:flutter/material.dart';

class Lec77 extends StatelessWidget {
  const Lec77({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gradient"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(width: 1,),
                borderRadius: BorderRadius.circular(21),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff649173),
                    Color(0xffDBD5A4),
                  ],
                ),
              ),
            ),
            SizedBox(height: 21,),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(width: 1,),
                borderRadius: BorderRadius.circular(21),
                gradient: RadialGradient(
                  colors: [
                    Color(0xffDBD5A4),
                    Color(0xff649173),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

