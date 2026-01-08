import 'package:flutter/material.dart';

class Lec68_2 extends StatelessWidget {
  // const Lec68_2({super.key});

  var userUsername;
  var userPassword;

  var textStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins',
  );

  Lec68_2(
    this.userUsername,
    this.userPassword
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Diplay value from another page")),
      body: Container(
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("UserName : $userUsername", style: textStyle),
              Text("Password : $userPassword", style: textStyle),
              SizedBox(height: 25,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
