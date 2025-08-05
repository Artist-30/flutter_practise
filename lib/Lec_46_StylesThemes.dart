import 'package:demo_app/UI_Helper/util.dart';
import 'package:flutter/material.dart';

class Lec46 extends StatelessWidget {
  const Lec46({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Font"),
      ),
      body: Column(
        children: [
          Center(
            // text style from main file
            child: Text(
              "Hello World!",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Center(
            // text style from main file
            child: Text(
              "Hello World! 2",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.purple),
            ),
          ),
          Center(
            child: Text(
              "Hello World! 3",
              style: mTextStyle11(),
            ),
          ),
          Center(
            child: Text(
              "Hello World! 4",
              style: mTextStyle21(fw: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
