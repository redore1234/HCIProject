import 'package:clinicbookingapp/helpers/constants.dart';
import 'package:clinicbookingapp/views/reserve/stepper_reserve.dart';
import 'package:flutter/material.dart';

//Create Class Appointment
class Appointment {
  String name;
  String phone;
  String nameClinic;
  String addressClinic;
  String time;
  String service;
  Appointment(this.name, this.phone, this.nameClinic, this.addressClinic,
      this.time, this.service);
}

class AppoinmentDetailScreen extends StatefulWidget {
  final Appointment appointment;
  AppoinmentDetailScreen(Appointment appointment)
      : appointment = appointment,
        super(key: new ObjectKey(appointment));

  @override
  _AppoinmentDetailScreenState createState() =>
      _AppoinmentDetailScreenState(appointment);
}

class _AppoinmentDetailScreenState extends State<AppoinmentDetailScreen> {
  final Appointment appointment;
  _AppoinmentDetailScreenState(this.appointment);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Thông tin lịch hẹn"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              child: Center(
                child: Text(
                  "Thông tin chi tiết",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  //margin: EdgeInsets.symmetric(horizontal: 40),
                  margin: const EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    'Họ và tên: ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    appointment.name,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  //margin: EdgeInsets.symmetric(horizontal: 40),
                  margin: const EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    'Số điện thoại: ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    appointment.phone,
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  //margin: EdgeInsets.symmetric(horizontal: 40),
                  margin: const EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    'Phòng khám: ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    appointment.nameClinic,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  //margin: EdgeInsets.symmetric(horizontal: 40),
                  margin: const EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    'Địa chỉ: ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    appointment.addressClinic,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  //margin: EdgeInsets.symmetric(horizontal: 40),
                  margin: const EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    'Thời gian: ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    appointment.time,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  //margin: EdgeInsets.symmetric(horizontal: 40),
                  margin: const EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    'Dịch vụ: ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 5, top: 30),
                  child: Text(
                    appointment.service,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StepperReserve()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.black)),
                    child: Container(
                      child: Row(
                        children: [
                          Text("Đổi lịch hẹn"),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.date_range_outlined),
                        ],
                      ),
                    )),
                SizedBox(
                  width: 70,
                ),
                FlatButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.black)),
                    child: Row(
                      children: [
                        Text("Hủy lịch hẹn"),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.cancel_outlined)
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
