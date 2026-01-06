import 'package:flutter/material.dart';
import 'Lec_33_assetImg.dart';

class Lec66 extends StatelessWidget {
  const Lec66({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro Page (Navigator)"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 22,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => Lec33(),
                  ),
                );
              },
              child: Text("Next", style: TextStyle(fontSize: 18),),
            ),
          ],
        ),
      ),
    );
  }
}
