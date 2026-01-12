import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Lec75 extends StatelessWidget {
  // const Lec75({super.key});

  var arrIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListWheel ScrollView")
      ),
      body: ListWheelScrollView(
        itemExtent: 150,
        perspective: 0.001,
        squeeze: 1.1,
        onSelectedItemChanged: (value) => print(value+1),
        offAxisFraction: -1.1,
        diameterRatio: 2,
        overAndUnderCenterOpacity: 0.9,
        magnification: 0.999,
        children: arrIndex.map((val) => Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            child: Center(
              child: Text(
                '$val',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        )).toList(),
      ),
    );
  }
}
