import 'package:flutter/material.dart';

class Lec80 extends StatefulWidget {
  const Lec80({super.key});

  @override
  State<Lec80> createState() => _Lec80State();
}

class _Lec80State extends State<Lec80> with SingleTickerProviderStateMixin {

  late Animation _animation;
  late AnimationController _animationCtrlr;

  var listRadius = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState() {
    super.initState();

    _animationCtrlr = AnimationController(vsync: this, duration: Duration(seconds: 2), lowerBound: 0.5);
    // _animation = Tween(begin: 0.0, end: 1.0).animate(_animationCtrlr);

    _animationCtrlr.addListener(() {
      setState(() {

      });
    });

    _animationCtrlr.repeat();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ripple Animation Effect"),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            buildMyRadius(listRadius[0]),
            buildMyRadius(listRadius[1]),
            buildMyRadius(listRadius[2]),
            buildMyRadius(listRadius[3]),
            buildMyRadius(listRadius[4]),
            Icon(Icons.add_call, color: Colors.yellow, size: 64,),
          ],


          // children: listRadius.map((radius) {
          //   return Center(
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         buildMyRadius(radius),
          //         // Icon(Icons.add_call)
          //       ],
          //     ),
          //   );
          // }).toList(),


        ),
      ),
    );
  }

  Widget buildMyRadius(radius) {
    return Container(
      width: radius * _animationCtrlr.value,
      height: radius * _animationCtrlr.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red.withValues(alpha: 1.0 - _animationCtrlr.value),
      ),

      // child: Icon(Icons.add_call, size: 64, color: Colors.yellow,),
    );
  }
}

