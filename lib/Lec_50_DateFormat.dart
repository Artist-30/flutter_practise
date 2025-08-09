import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Lec50 extends StatefulWidget {
  const Lec50({super.key});

  @override
  State<Lec50> createState() => _DateFormat();
}

class _DateFormat extends State<Lec50> {
  // var time = DateTime.now();

  var time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Format"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                "Current Date :\n${DateFormat("jms").format(time)}",
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

