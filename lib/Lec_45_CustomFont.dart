import 'package:flutter/material.dart';

class Lec45 extends StatelessWidget {
  const Lec45({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Font"),
      ),
      body: Column(
        children: [
          Center(
                child: Text(
                  "Hello World!",
                  style: TextStyle(
                    fontSize: 21,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
              ),
          ),
          Center(
            child: Text(
              "Hello World!",
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

