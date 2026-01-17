import 'package:flutter/material.dart';

class Lec41 extends StatelessWidget {
  const Lec41({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
              child: Text(
                "Use remaining space to widget",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        width: 100,
                        height: 150,
                        color: Colors.green,
                        child: Center(child: Text("Flex 5")),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 100,
                        height: 150,
                        color: Colors.red,
                        child: Center(child: Text("Flex 2")),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: 100,
                        height: 150,
                        color: Colors.blue,
                        child: Center(child: Text("Flex 3")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
