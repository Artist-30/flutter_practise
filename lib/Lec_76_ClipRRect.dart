import 'package:flutter/material.dart';

class Lec76 extends StatelessWidget {
  const Lec76({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRRect Widget"),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            'assets/images/iron_man.png',
            width: 250,
            height: 400,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

