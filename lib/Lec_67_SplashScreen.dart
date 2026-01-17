import 'dart:async';

import 'package:demo_app/Lec_66_ScreenNavigator.dart';
import 'package:flutter/material.dart';

class Lec67 extends StatefulWidget {
  const Lec67({super.key});


  @override
  State<Lec67> createState() => _Lec67State();
}

class _Lec67State extends State<Lec67> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Lec66(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            "Creatify",
            style: TextStyle(
              fontSize: 48,
              fontFamily: 'Poppins',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),
        ),
      ),
    );
  }
}
