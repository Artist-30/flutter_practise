import 'package:flutter/material.dart';

class Lec59 extends StatelessWidget {
  const Lec59({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RichText Widget"),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 16,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(text: "Hello "),
              TextSpan(
                text: "World! ",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'EduNSWACTCursive',
                ),
              ),
              TextSpan(text: "Welcome to "),
              TextSpan(
                text: "Flutter",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
