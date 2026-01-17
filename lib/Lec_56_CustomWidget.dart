import 'package:flutter/material.dart';
import './widgets/RoundedBtn.dart';
import 'package:demo_app/UI_Helper/util.dart';

class Lec56 extends StatelessWidget {
  const Lec56({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 50,
              child: RoundedBtn(
                btnName: "Hello World!",
                btnIcon: Icon(Icons.waving_hand,),
                btnCallBack: () {
                  print("Clicked!!!");
                },
                btnTextStyle: mTextStyle31(),
              ),
            ),
            SizedBox(height: 22,),
            SizedBox(
              width: 200,
              height: 50,
              child: RoundedBtn(
                btnName: "Login",
                btnCallBack: () {
                  print("Login Clicked!!!");
                },
                btnTextStyle: mTextStyle31(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
