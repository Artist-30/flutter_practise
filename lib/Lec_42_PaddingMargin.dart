import 'package:flutter/material.dart';

class Lec42 extends StatelessWidget {
  const Lec42({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Decoration"),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "Hello World!",
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
