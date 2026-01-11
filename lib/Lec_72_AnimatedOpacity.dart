import 'package:flutter/material.dart';

class Lec72 extends StatefulWidget {
  const Lec72({super.key});

  @override
  State<Lec72> createState() => _Lec72State();
}

class _Lec72State extends State<Lec72> {

  var myOpacity = 1.0;

  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FOO Animation Opacity"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacity,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.indigo,
              ),
              duration: Duration(seconds: 2),
            ),
            SizedBox(height: 21,),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  if(flag) {
                    myOpacity = 0.0;
                    flag = false;
                  } else {
                    myOpacity = 1.0;
                    flag = true;
                  }
                });
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

