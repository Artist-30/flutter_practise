import 'package:flutter/material.dart';

class Lec48 extends StatelessWidget {
  Lec48({super.key});

  var userEmail = TextEditingController();
  var userPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UserInput(TextField)"),
        backgroundColor: Color(0xFFB5B5B5),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  margin: EdgeInsets.only(bottom: 25),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 31,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
              ),
        
              // Start TextField for Email
              Container(
                margin: EdgeInsets.fromLTRB(21.0, 0.0, 21.0, 25),
                child: TextField(
                  controller: userEmail,
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  autocorrect: true,
                  decoration: InputDecoration(
                    hint: Text("Enter Email"),
                    prefixIcon: Icon(Icons.email),
                    helperText: "e.g. artist@gmail.com",
                    helperStyle: TextStyle(color: Colors.black87, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Color(0xFFB5B5B5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              // End TextField for Email
        
              // Start TextField for Password
              Container(
                margin: EdgeInsets.fromLTRB(21.0, 0.0, 21.0, 25),
                child: TextField(
                  controller: userPass,
                  obscureText: true,
                  obscuringCharacter: "*",
                  keyboardType: TextInputType.visiblePassword,
                  autocorrect: true,
                  decoration: InputDecoration(
                    hint: Text("Enter Password"),
                    prefixIcon: Icon(Icons.lock),
                    helperText: "Must be at least 8 characters long",
                    helperStyle: TextStyle(color: Colors.black87, fontSize: 13),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Color(0xFFB5B5B5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.visibility),
                    ),
                  ),
                ),
              ),
              // End TextField for Password
        
              // Start Submit Button
              ElevatedButton(
                onPressed: (){
                  String uEmail = userEmail.text.toString();
                  String uPass = userPass.text.toString();
                  print("Email : $uEmail\nPass : $uPass");
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              // End Submit Button
        
              /* Start Row Comment
              // Temp Row comment to cover all in one Widget
              Row(
                children: [
                  TextField(
                    keyboardType: TextInputType.text,
                    // enabled: false,
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          // width: double.infinity,
                          color: Colors.blue,
                        ),
                      ),
                      prefixIcon: Icon(Icons.email),
                      // label: Text("Enter Email"),
                      hint: Text("Enter Email"),
                      helperText: "e.g. abc@gmail.com",
                      helperStyle: TextStyle(color: Colors.red),
                      // filled: true,
                    ),
                  ),
                  Container(height: 35,),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        // borderSide: BorderSide(),
                      ),
                    ),
                  ),
                ],
              ),
              End Row Comment */
            ],
          ),
        ),
      ),
    );
  }
}

