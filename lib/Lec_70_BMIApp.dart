import 'package:flutter/material.dart';

class Lec70BMIApp extends StatefulWidget {
  const Lec70BMIApp({super.key});

  @override
  State<Lec70BMIApp> createState() => _Lec70BMIAppState();
}

class _Lec70BMIAppState extends State<Lec70BMIApp> {

  TextEditingController wtCtrlr = TextEditingController();
  TextEditingController ftCtrlr = TextEditingController();
  TextEditingController inchCtrlr = TextEditingController();

  var result = "";
  var bgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI App",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "BMI",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 21,),
                TextField(
                  controller: wtCtrlr,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.line_weight),
                    label: Text("Enter Your Weight"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 21,),
                TextField(
                  controller: ftCtrlr,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.height),
                    label: Text("Enter Your Height(Feet)"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 21,),
                TextField(
                  controller: inchCtrlr,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.height),
                    label: Text("Enter Your Height(Inch)"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 21,),
                ElevatedButton(
                  onPressed: (){
                    var wt = wtCtrlr.text.toString();
                    var ft = ftCtrlr.text.toString();
                    var inch = inchCtrlr.text.toString();

                    if(wt != "" && ft != "" && inch != "") {
                      var iWt = int.parse(wt);
                      var iFt = int.parse(ft);
                      var iInch = int.parse(inch);

                      var tInch = (iFt*12) + iInch;

                      var tCm = tInch * 2.54;

                      var tM = tCm / 100;

                      var bmi = iWt / (tM*tM);

                      String msg;

                      if(bmi < 18) {
                        msg = "You're UnderWeight!!!";
                        bgColor = Colors.red.shade200;
                      } else if (bmi > 25) {
                        msg = "You're OverWeight!!!";
                        bgColor = Colors.orange.shade200;
                      } else {
                        msg = "You're Healthy";
                        bgColor = Colors.green.shade200;
                      }

                      setState(() {
                        result = "$msg\nYour BMI Score is ${bmi.toStringAsFixed(2)}";
                      });

                    } else {
                      setState(() {
                        result = "Please fill all the required blanks!!!";
                        bgColor = Colors.white;
                      });
                    }

                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 21,),
                Text(
                  result,
                  style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,

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
