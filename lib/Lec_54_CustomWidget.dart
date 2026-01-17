import 'package:flutter/material.dart';

class Lec54 extends StatelessWidget {
  Lec54({super.key});

  var arrNames = ["Artist", "Brijesh", "Dhrumil", "Aniket", "Smit", "Nitin", "Narendra", "Piyush", "Vishw"];

  var arrColors = [
    Colors.red,
    Colors.blue,
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
        title: Text("Custom Widget"),
      ),
      body: Column(
        children: [

          firstSection(),

          secondSection(arrNames: arrNames),

          thirdSection(arrNames: arrNames),

          fourthSection(arrColors: arrColors),


        ],
      ),
    );
  }
}

class firstSection extends StatelessWidget {
  const firstSection({super.key});


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.purple,
              ),
            ),
          );
        },
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class secondSection extends StatelessWidget {

  final List<String> arrNames;

  const secondSection({super.key, required this.arrNames});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        color: Colors.black26,
        child: ListView.builder(itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    // child: Image.asset(
                    //   "assets/images/iron_man.png",
                    //   fit: BoxFit.cover,
                    // ),
                    backgroundImage: AssetImage("assets/images/iron_man.png"),
                    radius: 21,
                  ),
                  title: Text(arrNames[index], style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Name ${index + 1}"),
                  trailing: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.delete),
                  ),
                ),
              ),
            ),
          );
        },
          itemCount: arrNames.length,
        ),
      ),
    );
  }
}

class thirdSection extends StatelessWidget {

  final List<String> arrNames;

  const thirdSection({super.key, required this.arrNames});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blueGrey,
        child: ListView.builder(itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 12.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.red,
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
          itemCount: arrNames.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class fourthSection extends StatelessWidget {

  final List<Color> arrColors;

  const fourthSection({super.key, required this.arrColors});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
          child: GridView.builder(itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: arrColors[index],
                border: Border.all(
                  width: 2,
                  style: BorderStyle.solid,
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            );
          },
            itemCount: arrColors.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10
            ),
          ),
        ),
      ),
    );
  }
}
