import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Lec51 extends StatefulWidget {
  const Lec51({super.key});

  @override
  State<Lec51> createState() => _DateTimePicker();
}

class _DateTimePicker extends State<Lec51> {
  DateTime? _datePicked;
  TimeOfDay? _timePicked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date & Time Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _datePicked != null ? "Selected Date : ${DateFormat("yMMMMd").format(
                _datePicked!)}" : "Please Select Date",
              style: TextStyle(
                fontSize: 21,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 18.0, bottom: 18.0),
              child: ElevatedButton(
                onPressed: () async {
                  DateTime? datePicked = await showDatePicker(
                      context: context,
                      currentDate: DateTime.now(),
                      firstDate: DateTime(1947),
                      lastDate: DateTime(2099),
                  );

                  setState(() {
                    _datePicked = datePicked;
                  });

                  // if (datePicked != null) {
                  //   print("Selected Date : ${DateFormat("yMMMMd").format(
                  //       datePicked!)}");
                  // }
                },

                child: Text(
                  "Select Date",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),

            Text(
              _timePicked != null ? "Selected Time : ${_timePicked?.hour} : ${_timePicked?.minute}" : "Please Select Time",
              style: TextStyle(
                fontSize: 21,
              ),
            ),

            ElevatedButton(
              onPressed: () async {
                TimeOfDay? timePicked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.dialOnly,
                );
                setState(() {
                  _timePicked = timePicked;
                });

                // if (timePicked != null) {
                //   print("Selected Time : ${timePicked.hour} : ${timePicked.minute}");
                // }
              },
              child: Text(
                "Select Time",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

