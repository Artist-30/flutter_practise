import 'package:flutter/material.dart';

class Lec34 extends StatelessWidget {
  const Lec34({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row & Col"),
      ),
      body: Container(
        // width: 300,
        height: 500,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("R1", style: TextStyle(fontSize: 24),),
                  Text("R2", style: TextStyle(fontSize: 24),),
                  Container(
                    color: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          child: Text("Button1", style: TextStyle(fontSize: 24),),
                          onPressed: (){},
                        ),
                        ElevatedButton(
                          child: Text("Button2", style: TextStyle(fontSize: 24),),
                          onPressed: (){},
                        ),
                      ],
                    ),
                  ),
                  Text("R3", style: TextStyle(fontSize: 24),),
                  Text("R4", style: TextStyle(fontSize: 24),),
                  Text("R5", style: TextStyle(fontSize: 24),),
                ],
              ),
            ),
            Container(
              color: Colors.yellow,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("A", style: TextStyle(fontSize: 24),),
                  Text("B", style: TextStyle(fontSize: 24),),
                  Text("C", style: TextStyle(fontSize: 24),),
                  Text("D", style: TextStyle(fontSize: 24),),
                  Text("E", style: TextStyle(fontSize: 24),),
                  ElevatedButton(
                    child: Text("Click"),
                    onPressed: (){},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

