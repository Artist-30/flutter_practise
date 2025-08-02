import 'package:flutter/material.dart';

class Lec35 extends StatelessWidget {
  const Lec35({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell"),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            print("Clicked from onTap on Container");
          },
          onDoubleTap: (){
            print("Clicked from onDoubleTap on Container");
          },
          child: Container(
            width: 300,
            height: 300,
            color: Colors.red,
            child: Center(
              child: InkWell(
                onTap: (){
                  print("Clicked from onTap on Text");
                },
                onLongPress: (){
                  print("Clicked from onLongPress on Text");
                },
                child: Text(
                  "This Widget is for add clickable action performed on any widget",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

