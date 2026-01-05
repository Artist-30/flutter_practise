import 'package:flutter/material.dart';

class Lec58 extends StatelessWidget {
  const Lec58({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizeBox Widget"),
      ),
      body: Column(
        children: [
          // SizedBox(
          //   width: 200,
          //   height: 40,
          //   child: ElevatedButton(
          //     onPressed: (){},
          //     child: Text("Click here"),
          //   ),
          // ),
          // SizedBox(
          //   height: 100,
          // ),
          // SizedBox.square(
          //   dimension: 150,
          //   child: ElevatedButton(
          //       onPressed: (){},
          //       child: Text("Click here"),
          //   ),
          // ),
          // SizedBox(
          //   height: 100,
          // ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 276,
              maxWidth: 350,
              minHeight: 275,
              minWidth: 200
            ),

            // child: SizedBox.expand(
            //   child: ElevatedButton(
            //     onPressed: (){},
            //     child: Container(
            //       child: Text("Sizebox Expand"),
            //     ),
            //   ),
            // ),

            child: SizedBox.expand(
              child: ElevatedButton(
                onPressed: (){},
                child: Container(
                  child: Text("Sizebox Expand"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
