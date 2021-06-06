import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clinicbookingapp/views/history/past-appointment-card.dart';

class MyHistoryBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Lịch sử đặt lịch"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Lịch Sử Đặt Hẹn',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueAccent,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: PastAppointmentCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
