import 'package:flutter/material.dart';

class Lec74_2 extends StatelessWidget {
  const Lec74_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Hero Screen"),
      ),
      body: InkWell(
        onDoubleTap: (){
          Navigator.pop(context);
        },
        child: Hero(
          tag: "ironManImg",
          child: Image.asset(
            "assets/images/iron_man.png",
          ),
        ),
      ),
    );
  }
}
