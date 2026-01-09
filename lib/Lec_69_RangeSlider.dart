import 'package:flutter/material.dart';

class Lec69 extends StatefulWidget {
  const Lec69({super.key});

  @override
  State<Lec69> createState() => _Lec69State();
}

class _Lec69State extends State<Lec69> {

  RangeValues values = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {

    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text("Range Slider Widget"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: RangeSlider(
            values: values,
            labels: labels,
            activeColor: Colors.red,
            // inactiveColor: Colors.red.shade100,  
            divisions: 20,
            min: 0,
            max: 100,
            overlayColor: WidgetStateColor.transparent,
            onChanged: (newValue) {
              values = newValue;
              print("${newValue.start} - ${newValue.end}");
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
