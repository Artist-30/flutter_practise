import 'package:demo_app/UI_Helper/util.dart';
import 'package:flutter/material.dart';

class Lec47 extends StatelessWidget {
  Lec47({super.key});

  var arrNames = ["Artist", "Dhrumil", "Aniket", "Narendra", "Nitin", "Kaushil", "Divyang", "Piyush", "Smit", "Vishw"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: Center(
        child: Card(
          elevation: 7,
          shadowColor: Colors.purple,
          color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Hello World!",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: "Poppins",
              ),
            ),
          ),
        ),
      ),
    );
  }
}

