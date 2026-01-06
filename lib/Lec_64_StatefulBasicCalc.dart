import 'package:flutter/material.dart';

class Lec64 extends StatefulWidget {
  const Lec64({super.key});

  @override
  State<StatefulWidget> createState() => _Lec64State();
}

class _Lec64State extends State<Lec64> {
  var no1Cntrlr = TextEditingController();
  var no2Cntrlr = TextEditingController();

  var result = "";

  var textStyle = TextStyle(
    fontSize: 24,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Calc Widget"),
      ),
      body: Padding(
        padding: EdgeInsets.all(21.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: no1Cntrlr,
              keyboardType: TextInputType.number,
              style: textStyle,
            ),
            TextField(
              controller: no2Cntrlr,
              keyboardType: TextInputType.number,
              style: textStyle,
            ),
            Padding(
              padding: EdgeInsets.all(21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      var no1 = int.parse(no1Cntrlr.text.toString());
                      var no2 = int.parse(no2Cntrlr.text.toString());

                      var ans = no1 + no2;

                      result = "$no1 + $no2 = $ans";

                      setState((){});
                    },
                    child: Text("+", style: textStyle,),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      var no1 = int.parse(no1Cntrlr.text.toString());
                      var no2 = int.parse(no2Cntrlr.text.toString());

                      var ans = no1 - no2;

                      result = "$no1 - $no2 = $ans";

                      setState((){});
                    },
                    child: Text("-", style: textStyle,),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      var no1 = int.parse(no1Cntrlr.text.toString());
                      var no2 = int.parse(no2Cntrlr.text.toString());

                      var ans = no1 * no2;

                      result = "$no1 * $no2 = $ans";

                      setState((){});
                    },
                    child: Text("*", style: textStyle,),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      try{
                        var no1 = int.parse(no1Cntrlr.text.toString());
                        var no2 = int.parse(no2Cntrlr.text.toString());

                        if(no2 != 0) {
                          var ans = no1 / no2;

                          result = "$no1 / $no2 = $ans";
                        }
                        else {
                          result = "Please enter proper divisor";
                        }
                      } catch(Exception) {
                        result = "Please enter proper divisor";
                      }

                      setState((){});
                    },
                    child: Text("/", style: textStyle,),
                  ),
                ],
              ),
            ),
            Text(
              "$result",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
