import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'dart:ui';
import 'package:date_picker_timeline/extra/color.dart';

class ReserveScreen extends StatefulWidget {
  @override
  _ReserveScreenState createState() => _ReserveScreenState();
}

class _ReserveScreenState extends State<ReserveScreen> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
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

class GroupedButton extends StatefulWidget {
  @override
  _GroupedButtonState createState() => _GroupedButtonState();
}

final Color selectionColor = AppColors.defaultSelectionColor;

class _GroupedButtonState extends State<GroupedButton> {
  int _selectedIndex = 0;
  final Color selectionColor = AppColors.defaultSelectionColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Chọn thời gian phù hợp với bạn",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          customRadio("8:00", 0),
          customRadio("9:00", 1),
          customRadio("10:00", 2),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          customRadio("11:00", 3),
          customRadio("12:00", 4),
          customRadio("14:00", 5),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          customRadio("15:00", 6),
          customRadio("16:00", 7),
          customRadio("17:00", 8),
        ],
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          customRadio("18:00", 9),
          customRadio("19:00", 10),
          customRadio("20:00", 11),
        ],
      ),

//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: [
//              customRadio("7:00 - 8:00", 0),
//              customRadio("8:00 - 9:00", 1),
//              customRadio("9:00 - 10:00", 2),
//            ],
//          ),
//          SizedBox(
//            height: 20,
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: [
//              customRadio("13:00 - 14:00", 3),
//              customRadio("14:00 - 15:00", 4),
//              customRadio("15:00 - 16:00", 5),
//            ],
//          ),
//          SizedBox(
//            height: 20,
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: [
//              customRadio("16:00 - 17:00", 6),
//              customRadio("17:00 - 18:00", 7),
//              customRadio("18:00 - 19:00", 8),
//            ],
//          ),
//          SizedBox(
//            height: 20,
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children: [
//              customRadio("19:00 - 20:00", 9),
////              customRadio("19:00", 10),
////              customRadio("20:00", 11),
//            ],
//          ),
        ],
      ),
    );
  }

  Widget customRadio(String time, int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        height: 30,
        color: _selectedIndex == index ? Colors.blueAccent : Colors.white,
        child: TextButton(
          onPressed: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Text(time,
              style: TextStyle(
                  color:
                      _selectedIndex != index ? Colors.black : Colors.white)),
        ),
      ),
    );
  }
}
