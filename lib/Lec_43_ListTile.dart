import 'package:flutter/material.dart';

class Lec43 extends StatelessWidget {
  Lec43({super.key});

  var arrNames = ["Artist", "Dhrumil", "Aniket", "Narendra", "Smit", "Piyush", "Nitin", "Kaushik", "Vishw", "Anirudh", "Ashish", "Abhay"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE0E0E0),
        title: Text("ListTile"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text("${index + 1}", style: TextStyle(fontSize: 18),),
            title: Text(arrNames[index], style: TextStyle(fontSize: 18),),
            subtitle: Text("Number ${index + 1}", style: TextStyle(fontSize: 14),),
            trailing: InkWell(
              onTap: (){
                print("Tap on Icon add ${arrNames[index]} ${index + 1}");
              },
              child: Icon(Icons.add)
            ),
          );
        },

        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2,
            height: 12,
          );
        },
      ),
    );
  }
}

