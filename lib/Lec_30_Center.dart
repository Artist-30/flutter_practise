import 'package:flutter/material.dart';

class Lec30 extends StatelessWidget {
  const Lec30({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE0E0E0),
        title: Text("Center Widget"),
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 175,
          color: Color(0xFF999999),
          child: Center(
            child: Text(
              "Hello World!",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF012345),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

