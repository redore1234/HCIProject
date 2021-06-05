import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:table_calendar/table_calendar.dart';
import 'package:clinicbookingapp/helpers/constants.dart';
import 'package:clinicbookingapp/views/global/shared-component.dart';
import 'dart:collection';

class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

/// Example events.
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.
final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);

final _kEventSource = Map.fromIterable(List.generate(50, (index) => index),
    key: (item) => DateTime.utc(2020, 10, item * 5),
    value: (item) => List.generate(
        item % 4 + 1, (index) => Event('Event $item | ${index + 1}')))
  ..addAll({
    DateTime.now(): [
      Event('Today\'s Event 1'),
      Event('Today\'s Event 2'),
    ],
  });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

final kNow = DateTime.now();
final kFirstDay = DateTime(kNow.year, kNow.month - 3, kNow.day);
final kLastDay = DateTime(kNow.year, kNow.month + 3, kNow.day);

// ---------------------------------------------------------------------------------

class SchedulePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScheduleState();
}

class ScheduleState extends State<SchedulePage> {
//  late CalendarController _controller;

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay;

  @override
  void initState() {
    super.initState();
//    _controller = CalendarController();
  }

  @override
  void dispose() {
    super.dispose();
//    _controller.dispose();
  }

  TextStyle _textStyle(FontWeight fontWeight) {
    return TextStyle(color: Color(0xFF30384c), fontWeight: fontWeight);
  }

  Container _createAppointmentItem() {
    return Container(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              // timeline in schedule
              Column(
                children: <Widget>[
                  // a dot
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Constants.GREEN,
                      borderRadius:
                          new BorderRadius.all(const Radius.circular(10)),
                    ),
                  ),
                  // a vertical line
                  Container(
                    height: 80,
                    width: 1,
                    color: Constants.GREEN,
                  )
                ],
              ),
            ],
          ),

          SizedBox(
            width: 10,
          ),

          // day of appointment
          Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "15 Dec 2021",
                      style: TextStyle(color: Constants.GRAY),
                    ),
                    Text(
                      "7:00 - 8:00",
                      style: TextStyle(color: Constants.GRAY),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // dentist title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Dentist",
                      style: TextStyle(color: Constants.GRAY),
                    ),
                    Text(
                      "Nurse",
                      style: TextStyle(color: Constants.GRAY),
                    )
                  ],
                ),

                SizedBox(
                  height: 8,
                ),
                //dentist info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[Text("Dentist Name"), Text("Nurse Name")],
                ),
              ],
            ),
          ),

          // right of appoint box
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedComponent.shared.buildAppBar("Schedule"),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              TableCalendar(
                firstDay: kFirstDay,
                lastDay: kLastDay,
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  // Use `selectedDayPredicate` to determine which day is currently selected.
                  // If this returns true, then `day` will be marked as selected.

                  // Using `isSameDay` is recommended to disregard
                  // the time-part of compared DateTime objects.
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(_selectedDay, selectedDay)) {
                    // Call `setState()` when updating the selected day
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  }
                },
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    // Call `setState()` when updating calendar format
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                onPageChanged: (focusedDay) {
                  // No need to call `setState()` here
                  _focusedDay = focusedDay;
                },
              ),

              SizedBox(
                height: 30,
              ),

              //  schedule day
              Padding(
                padding: const EdgeInsets.all(8.0),
                // big box of appointment
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Appointments",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Constants.BLACK),
                      ),
                      _createAppointmentItem(),
                      _createAppointmentItem(),
                      _createAppointmentItem(),

                      // bottom box
                      SizedBox(
                        height: 80,
                      ),
                    ],
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



//@override
//Widget build(BuildContext context) {
//  return Scaffold(
//    appBar: SharedComponent.shared.buildAppBar("Schedule"),
//    body: Container(
//      child: SingleChildScrollView(
//        child: Column(
//          children: <Widget>[
//            SizedBox(height: 30,),
//            TableCalendar(
//              startingDayOfWeek: StartingDayOfWeek.monday,
//              calendarController: _controller,
//              calendarStyle: CalendarStyle(
//                weekdayStyle: _textStyle(FontWeight.normal),
//                weekendStyle: _textStyle(FontWeight.normal),
//              ),
//
//              daysOfWeekStyle: DaysOfWeekStyle(
//                weekdayStyle: TextStyle(color: Color(0xFF30384c), fontWeight: FontWeight.bold, fontSize: 16),
//                weekendStyle: TextStyle(color: Color(0xFF30384c), fontWeight: FontWeight.bold, fontSize: 16),
//              ),
//
//              headerStyle: HeaderStyle(
////                  formatButtonVisible: false,
//                titleTextStyle: TextStyle(color: Color(0xFF30384c), fontWeight: FontWeight.bold, fontSize: 20),
//
//                leftChevronIcon: Icon(Icons.chevron_left, color: Color(0xFF30384c),),
//                rightChevronIcon: Icon(Icons.chevron_right, color: Color(0xFF30384c),),
//
//              ),
//            ),
//
//            SizedBox(height: 30,)
//
//          ],
//        ),
//
//      ),
//    ),
//  );
//}

