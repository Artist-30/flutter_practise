import 'package:flutter/material.dart';

class Lec37 extends StatelessWidget {
  Lec37({super.key});

  var arrNames = ["Artist", "Dhrumil", "Aniket", "Smit", "Piyush", "Nitin", "Kaushik"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE0E0E0),
        title: Text("ListView"),
      ),

      // Example of ListView
      /* Start ListView
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("One", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Two", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Three", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Four", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Fifth", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
          ),
        ],
      ),
      End ListView */

      // Example of ListView.builder
      /* Start ListView.builder
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Center(child: Text(arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),));
        },
        itemCount: arrNames.length,
        itemExtent: 100,
        scrollDirection: Axis.horizontal,
      ),
      End */

      // Example of ListView.separated
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                print("You clicked on " + arrNames[index]);
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              "assets/images/iron_man.png",
                              // width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            arrNames[index], style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      arrNames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: arrNames.length,
        // scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return Divider(
            height: 12,
            thickness: 2,
          );
        },
      ),
    );
  }
}

