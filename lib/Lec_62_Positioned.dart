import 'package:flutter/material.dart';

class Lec62 extends StatelessWidget {
  const Lec62({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Positioned Widget"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // width: 300,
        // height: 400,
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Positioned(
              width: 80,
              height: 80,
              bottom: 25,
              right: 25,
              child: ElevatedButton(
                onPressed: (){
                  print("Positioned Info Button!!!");
                },
                child: Icon(Icons.info, size: 30,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
