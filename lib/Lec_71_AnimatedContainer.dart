import 'package:flutter/material.dart';

class Lec71 extends StatefulWidget {
  const Lec71({super.key});

  @override
  State<Lec71> createState() => _Lec71State();
}

class _Lec71State extends State<Lec71> {

  var _width = 200.0;
  var _height = 100.0;

  bool flag = true;

  Decoration myDecor = BoxDecoration(
    color: Colors.brown,
    borderRadius: BorderRadius.circular(25),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FOO Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: myDecor,
              curve: Curves.bounceOut,
              duration: Duration(seconds: 2),
            ),
            SizedBox(height: 21,),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  if(flag) {
                    _width = 100.0;
                    _height = 200.0;
                    myDecor = BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    );
                    flag = false;
                  } else {
                    _width = 200.0;
                    _height = 100.0;
                    myDecor = BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(25),
                    );
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
