import 'package:flutter/material.dart';

class Lec29 extends StatelessWidget {
  const Lec29({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Widget"),
      ),
      body: Container(
        width: 150,
        height: 150,
        color: Colors.black,
        child: Text(
          "This is Box",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

