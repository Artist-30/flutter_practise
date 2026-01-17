import 'package:demo_app/Lec_74_AnimatedHeroScreen.dart';
import 'package:flutter/material.dart';

class Lec74 extends StatelessWidget {
  const Lec74({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FOO Animation Hero"),
      ),
      body: Center(
        child: InkWell(
          onDoubleTap: (){
            Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => Lec74_2(),
              ),
            );
          },
          child: Hero(
            tag: 'ironManImg',
            transitionOnUserGestures: false,
            child: Image.asset(
              "assets/images/iron_man.png",
              height: 200,
              // width: 150,
            ),
          ),
        ),
      ),
    );
  }
}
