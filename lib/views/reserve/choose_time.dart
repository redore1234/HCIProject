import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/material.dart';

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
            "Buổi sáng",
            style: TextStyle(
              fontSize: 25,
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
            height: 30,
          ),
          Text(
            "Buổi trưa",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customRadio("11:00", 3),
              customRadio("12:00", 4),
              customRadio("13:00", 5),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Buổi chiều",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
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
