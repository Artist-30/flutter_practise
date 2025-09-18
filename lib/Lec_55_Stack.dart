import 'package:flutter/material.dart';

class Lec55 extends StatelessWidget {
  const Lec55({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          color: Colors.black87,
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.blueGrey,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
                  child: Text(
                    "Box-1",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 32),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 30,
                child: Container(
                  width: 180,
                  height: 180,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
                    child: Text(
                      "Box-2",
                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 32),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 60,
                top: 60,
                child: Container(
                  width: 160,
                  height: 160,
                  color: Colors.teal,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
                    child: Text(
                      "Box-3",
                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 32),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 90,
                top: 90,
                child: Container(
                  width: 140,
                  height: 140,
                  color: Colors.deepPurple,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
                    child: Text(
                      "Box-4",
                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 28),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 120,
                child: Container(
                  width: 120,
                  height: 120,
                  color: Colors.lightBlueAccent,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
                    child: Text(
                      "Box-5",
                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 24),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 150,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
                    child: Text(
                      "Box-6",
                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 180,
                top: 180,
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.lime,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
                    child: Text(
                      "Box-7",
                      style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

