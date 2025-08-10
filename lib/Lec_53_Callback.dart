import 'package:flutter/material.dart';

class Lec53 extends StatelessWidget {
  const Lec53({super.key});

  callback() {
    print("This is from callback function");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CallBack Function"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Click here!!!"),
          onPressed: callback,
        ),
      ),
    );
  }
}

