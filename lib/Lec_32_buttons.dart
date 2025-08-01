import 'package:flutter/material.dart';

class Lec32 extends StatelessWidget {
  const Lec32({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text("Click here for TextButton"),
              onPressed: (){
                print("Clicked by TextButton");
              },
              onLongPress: (){
                print("Clicked by LongPress TextButton");
              },
              onHover: (hover){
                print("Hover on TextButton");
              },
              onFocusChange: (focus){
                print("Focus on TextButton");
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              child: Text("Click here for ElevatedButton"),
              onPressed: (){
                print("Clicked by ElevatedButton");
              },
            ),
            SizedBox(height: 20,),
            OutlinedButton(
              child: Text("Click here for OutlinedButton"),
              onPressed: (){
                print("Clicked by OutlinedButton");
              },
            ),
          ],
        ),
      ),
    );
  }
}

