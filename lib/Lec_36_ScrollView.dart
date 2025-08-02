import 'package:flutter/material.dart';

class Lec36 extends StatelessWidget {
  const Lec36({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollView"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        width: 200,
                        height: 200,
                        color: Colors.green,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        width: 200,
                        height: 200,
                        color: Colors.orange,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        width: 200,
                        height: 200,
                        color: Colors.blue,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        width: 200,
                        height: 200,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        width: 200,
                        height: 200,
                        color: Colors.yellow,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        width: 200,
                        height: 200,
                        color: Colors.purple,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                height: 200,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                height: 200,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                height: 200,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                height: 200,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                height: 200,
                color: Colors.yellow,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                height: 200,
                color: Colors.purple,
              ),
              Container(
                height: 200,
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

