import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Lec61 extends StatelessWidget {
  const Lec61({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Font Awesome Icons"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.amazon,
                  size: 75,
                  color: Colors.brown,
                ),
                Text(
                  "Amazon",
                  style: TextStyle(
                    fontFamily: 'EduNSWACTCursive',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            SizedBox(width: 25),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.googlePay,
                  size: 75,
                  color: Colors.brown,
                ),
                Text(
                  "Google Pay",
                  style: TextStyle(
                    fontFamily: 'EduNSWACTCursive',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

