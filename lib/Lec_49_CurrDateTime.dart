import 'package:flutter/material.dart';

class Lec49 extends StatefulWidget {
  const Lec49({super.key});

  @override
  State<Lec49> createState() => _DateTime();
}

class _DateTime extends State<Lec49> {
  // var time = DateTime.now();

  var time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Current Date & Time"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                "Current Date :\n$time",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  time = DateTime.now();
                });
              },
              child: Text("Click here!!!"),
            ),
          ],
        ),
      ),
    );
  }
}

