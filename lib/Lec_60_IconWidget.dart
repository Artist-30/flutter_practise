import 'package:flutter/material.dart';

class Lec60 extends StatelessWidget {
  const Lec60({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Widget"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Colors.lime,
          ),
          child: Icon(
            Icons.play_arrow_outlined,
            size: 50,
            color: Colors.black,
            // blendMode: BlendMode.softLight,
            weight: 20,
            textDirection: TextDirection.rtl,
            applyTextScaling: true,
            fill: 1.0,
            grade: 50,
            semanticLabel: "play",
            opticalSize: 25,
            shadows: [
              Shadow(color: Colors.pink, offset: Offset(25, 25)),
              Shadow(color: Colors.purple, offset: Offset(-25, 25), blurRadius: 5),
              Shadow(color: Colors.purple, offset: Offset(25, -25), blurRadius: 5),
              Shadow(color: Colors.pink, offset: Offset(-25, -25)),
            ],
          ),
        ),
      ),
    );
  }
}

