import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'dart:ui';
import 'choose_time.dart';

class ReserveScreen extends StatefulWidget {
  @override
  _ReserveScreenState createState() => _ReserveScreenState();
}

class _ReserveScreenState extends State<ReserveScreen> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          child: DatePicker(
            DateTime.now(),
            width: 60,
            height: 80,
            controller: _controller,
            initialSelectedDate: DateTime.now(),
            selectionColor: Colors.blueAccent,
            selectedTextColor: Colors.white,
            onDateChange: (date) {
              // New date selected
              setState(() {
                _selectedValue = date;
              });
            },
          ),
        ),
        SizedBox(
          height: 50,
        ),
        GroupedButton(),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
