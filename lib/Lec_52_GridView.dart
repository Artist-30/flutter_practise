import 'package:flutter/material.dart';

class Lec52 extends StatelessWidget {
  Lec52({super.key});

  var arrColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.pink,
    Colors.orange,
    Colors.deepPurple,
    Colors.blueGrey,
    Colors.lime,
    Colors.black26,
    Colors.cyan,
    Colors.indigo,
    Colors.teal
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            GridView.builder(itemBuilder: (context, index) {
                return Container(color: arrColors[index],);
              },
              itemCount: arrColors.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),

            GridView.extent(
              maxCrossAxisExtent: 100,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(color: arrColors[0],),
                Container(color: arrColors[1],),
                Container(color: arrColors[2],),
                Container(color: arrColors[3],),
                Container(color: arrColors[4],),
                Container(color: arrColors[5],),
                Container(color: arrColors[6],),
                Container(color: arrColors[7],),
                Container(color: arrColors[8],),
                Container(color: arrColors[9],),
                Container(color: arrColors[10],),
              ],
            ),

            GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(color: arrColors[0],),
                Container(color: arrColors[1],),
                Container(color: arrColors[2],),
                Container(color: arrColors[3],),
                Container(color: arrColors[4],),
                Container(color: arrColors[5],),
                Container(color: arrColors[6],),
                Container(color: arrColors[7],),
                Container(color: arrColors[8],),
                Container(color: arrColors[9],),
                Container(color: arrColors[10],),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

