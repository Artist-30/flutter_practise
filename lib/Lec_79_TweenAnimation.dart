import 'package:flutter/material.dart';

class Lec79 extends StatefulWidget {
  const Lec79({super.key});

  @override
  State<Lec79> createState() => _Lec79State();
}

class _Lec79State extends State<Lec79> with SingleTickerProviderStateMixin {
  // const Lec79({super.key});

  late Animation animation, animationColor;
  late AnimationController animationCtrlr;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationCtrlr = AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween(begin: 200.0, end: 100.0).animate(animationCtrlr);
    animationColor = ColorTween(begin: Colors.red, end: Colors.yellow).animate(animationCtrlr);

    animationCtrlr.addListener(() {
      print(animation.value);
      print(animationColor.value);
      setState(() {

      });
    });

    animationCtrlr.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tween Animation"),
      ),
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: animationColor.value,
        ),
      ),
    );
  }
}

