
import 'package:flutter/material.dart';

class Lec73 extends StatefulWidget {
  const Lec73({super.key});

  @override
  State<Lec73> createState() => _Lec73State();
}

class _Lec73State extends State<Lec73> {

  bool flag = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Timer(Duration(seconds: 5), (){
    //   reload();
    // });
  }

  void reload() {
    setState(() {
      if(flag) {
        flag = false;
      } else {
        flag = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FOO Animation CrossFade"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                width: 300,
                height: 550,
                color: Colors.red.shade200,
              ),
              secondChild: Image.asset(
                "assets/images/iron_man.png",
                height: 550,
              ),
              reverseDuration: Duration(seconds: 20),
              crossFadeState: flag ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(seconds: 2),
            ),
            SizedBox(height: 21,),
            ElevatedButton(
              onPressed: (){
                reload();

                // flag = false;
                // setState(() {
                //
                // });
              },
              child: Text(
                "Animate",
                style: TextStyle(
                  fontSize: 21,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

