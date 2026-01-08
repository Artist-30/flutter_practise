import 'package:demo_app/Lec_68_DisplayValue.dart';
import 'package:flutter/material.dart';

class Lec68 extends StatefulWidget {
  @override
  State<Lec68> createState() => _Lec68State();
}

class _Lec68State extends State<Lec68> {
  // const Lec68({super.key});
  var userNameController = TextEditingController();

  var userPasswordController = TextEditingController();

  var textNull = "";

  var textStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins',
  );

  // Lec68(this.userName, this.userPassword);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Passing One Page to Another"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: userNameController,
                  style: textStyle,
                  decoration: InputDecoration(
                    label: Text("Enter Username"),
                  ),
                ),
                // SizedBox(height: 25,),
                TextField(
                  controller: userPasswordController,
                  style: textStyle,
                  decoration: InputDecoration(
                    label: Text("Enter Password"),
                  ),
                ),
                SizedBox(height: 25,),
                Text("$textNull", style: textStyle.copyWith(color: Colors.red),),
                // SizedBox(height: 25,),
                ElevatedButton(
                  onPressed: (){
                    // print("Your  UserName : ${userNameController.text}");
                    // print("Your  Password : ${userPasswordController.text}");

                    if(userNameController.text != "" && userPasswordController.text != "") {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                            Lec68_2(
                              userNameController.text.toString(),
                              userPasswordController.text.toString(),
                            ),
                      ));
                    } else {
                      textNull = "Please Enter Proper Details.";

                      setState(() {});
                    }
                  },
                  child: Text(
                    "Login",
                    style: textStyle.copyWith(fontSize: 21),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
