import 'package:flutter/material.dart';

class GroupedButton extends StatefulWidget {
  @override
  _GroupedButtonState createState() => _GroupedButtonState();
}

class _GroupedButtonState extends State<GroupedButton> {
  int _selectedIndex = 0;

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
              customRadio("9:00", 0),
              customRadio("10:00", 0),
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
              customRadio("11:00", 0),
              customRadio("12:00", 0),
              customRadio("13:00", 0),
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
              customRadio("15:00", 0),
              customRadio("16:00", 0),
              customRadio("17:00", 0),
            ],
          ),
        ],
      ),
    );
  }

  Widget customRadio(String time, int index) {
    return OutlineButton(
      onPressed: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      borderSide: BorderSide(
          color: _selectedIndex == index ? Colors.black : Colors.blueAccent),
      child: Text(time,
          style: TextStyle(
              color:
                  _selectedIndex == index ? Colors.black : Colors.blueAccent)),
    );
  }
}
