import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Lec81 extends StatefulWidget {
  const Lec81({super.key});

  @override
  State<Lec81> createState() => _Lec81State();
}

class _Lec81State extends State<Lec81> {
  // const Lec81({super.key});
  TextEditingController nameCtrlr = TextEditingController();

  var nameVal = "No Value Saved";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  label: Text("Name"),
                ),
                controller: nameCtrlr,
              ),
              SizedBox(height: 21,),
              ElevatedButton(
                onPressed: () async {
                  var name = nameCtrlr.text.toString();

                  var prefs = await SharedPreferences.getInstance();

                  prefs.setString("name", name);
                },
                child: Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 21,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 21,),
              Text(
                nameVal,
                style: TextStyle(
                  fontSize: 21,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();

    var getName = prefs.getString("name");

    setState(() {
      nameVal = getName ?? "No Value Saved";
    });
  }
}

