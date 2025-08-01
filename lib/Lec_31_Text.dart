import 'package:flutter/material.dart';

class Lec31 extends StatelessWidget {
  const Lec31({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Widget"),
      ),
      body: Center(
          child: Text(
            "Hello World!!!",
            style: TextStyle(
              fontSize: 24,
              color: Colors.yellow,
              backgroundColor: Colors.red,
              fontWeight: FontWeight.w800,
              wordSpacing: 2,
              letterSpacing: 5,
            ),
          ),
      ),
    );
  }
}

