import 'package:flutter/material.dart';

class Lec33 extends StatelessWidget {
  const Lec33({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image with assets"),
      ),
      body: Center(
        child: Image.asset(
          "assets/images/iron_man.png",
          height: 550,
          // width: 750,
        ),
      ),
    );
  }
}

