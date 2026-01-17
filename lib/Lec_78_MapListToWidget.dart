import 'package:flutter/material.dart';

class Lec78 extends StatelessWidget {
  // const Lec78({super.key});

  var arrDate = [
    {
      'name' : 'Artist',
      'mobNo' : '9876543210',
      'unRead' : '1'
    },
    {
      'name' : 'Dhrumil',
      'mobNo' : '1234567890',
      'unRead' : '3'
    },
    {
      'name' : 'Aniket',
      'mobNo' : '4567891230',
      'unRead' : '2'
    },
    {
      'name' : 'Smit',
      'mobNo' : '1237890465',
      'unRead' : '7'
    },
    {
      'name' : 'Artist',
      'mobNo' : '9876543210',
      'unRead' : '1'
    },
    {
      'name' : 'Dhrumil',
      'mobNo' : '1234567890',
      'unRead' : '3'
    },
    {
      'name' : 'Aniket',
      'mobNo' : '4567891230',
      'unRead' : '2'
    },
    {
      'name' : 'Smit',
      'mobNo' : '1237890465',
      'unRead' : '7'
    },
    {
      'name' : 'Artist',
      'mobNo' : '9876543210',
      'unRead' : '1'
    },
    {
      'name' : 'Dhrumil',
      'mobNo' : '1234567890',
      'unRead' : '3'
    },
    {
      'name' : 'Aniket',
      'mobNo' : '4567891230',
      'unRead' : '2'
    },
    {
      'name' : 'Smit',
      'mobNo' : '1237890465',
      'unRead' : '7'
    },
  ];

  Lec78({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Map List To Widget"),
      ),
      body: ListView(
        children: arrDate.map((data) {
          return Card(
            shadowColor: Colors.black,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(data['name'].toString()),
              subtitle: Text(data['mobNo'].toString()),
              trailing: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.green.shade500,
                foregroundColor: Colors.white,
                child: Text(data['unRead'].toString()),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

