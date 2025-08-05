import 'package:flutter/material.dart';

class Lec44 extends StatelessWidget {
  const Lec44({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE0E0E0),
        title: Text("Circle Avatar"),
      ),
      body: Center(
        child: CircleAvatar(
          child: Container(
            width: 60,
            height: 60,
            child: Column(
              children: [
                Container(
                  width: 33,
                  height: 33,
                  child: Image.asset(
                    "assets/images/iron_man.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  "Name",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.green,
          maxRadius: 60,
        ),
      ),
    );
  }
}
