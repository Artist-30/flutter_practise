import 'package:flutter/material.dart';

class Lec63 extends StatefulWidget {
  const Lec63({super.key});

  @override
  State<StatefulWidget> createState() => _Lec63State();
}

class _Lec63State extends State<Lec63> {
  var _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StatefulAndless Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count: $_count",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: 25,),
            ElevatedButton(
              onPressed: (){
                // _count = _count + 1;
                setState((){
                  // _count += 2;
                  _count++;
                  print('$_count');
                });
              },
              child: Text(
                "Increament by 1",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
