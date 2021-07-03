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

class _AppoinmentDetailScreenState extends State<AppoinmentDetailScreen>{
  final Appointment appointment;
  Reason _reason = Reason.onBussiness;
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
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              insetPadding: EdgeInsets.all(10),
                              content: Stack(
                                overflow: Overflow.visible,
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 450,
                                    child: ReasonRadio(),
                                  ),
                                ],
                              ),
                            );
                          }
                      );
                    },
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

enum Reason { onBussiness, wrongDay, orther, wrongService }

class ReasonRadio extends StatefulWidget {
  ReasonRadio({Key key}) : super(key: key);

  @override
  _ReasonRadioState createState() => _ReasonRadioState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _ReasonRadioState extends State<ReasonRadio> {
  Reason _character = Reason.onBussiness;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Cho chúng tôi biết lý do', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        SizedBox(height: 10,),
        Text('Chọn các lý do sau'),
        RadioListTile<Reason>(
          title: Text('Bận công việc riêng'),
          value: Reason.onBussiness,
          groupValue: _character,
          onChanged: (Reason value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<Reason>(
          title: const Text('Nhấn đặt nhầm ngày'),
          value: Reason.wrongDay,
          groupValue: _character,
          onChanged: (Reason value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<Reason>(
          title: const Text('Nhấn đặt nhầm dịch vụ'),
          value: Reason.wrongService,
          groupValue: _character,
          onChanged: (Reason value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<Reason>(
          title: const Text('Khác'),
          value: Reason.orther,
          groupValue: _character,
          onChanged: (Reason value) {
            setState(() {
              _character = value;
            });
          },
        ),
      SizedBox(height: 10,),
      TextFormField(
        maxLines: 3,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5)
            ),
          hintText: 'Nếu chọn Khác, ghi lý do (optional)'
        ),
      ),
      SizedBox(height: 10,),
      Row(
          children: [
            SizedBox(
              width: 25,
            ),
            RaisedButton(
              onPressed: () =>
                  Navigator.of(context).pop(),
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(80.0)),
              textColor: Colors.white,
              padding: const EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                width: size.width * 0.25,
                decoration: new BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(80.0),
                  gradient: new LinearGradient(colors: [
                    Constants.PRIMARY_COLOR,
                    Constants.HEAVY_BLUE
                    // Color.fromARGB(255, 255, 136, 31),
                    // Color.fromARGB(255, 255, 136, 31)
                  ]),
                ),
                padding: const EdgeInsets.all(0),
                child: Text(
                  "Hủy bỏ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(80.0)),
              textColor: Colors.white,
              padding: const EdgeInsets.all(0),
              child: Container(
                alignment: Alignment.center,
                height: 50.0,
                width: size.width * 0.25,
                decoration: new BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(80.0),
                  gradient: new LinearGradient(colors: [
                    Constants.PRIMARY_COLOR,
                    Constants.HEAVY_BLUE
                    // Color.fromARGB(255, 255, 136, 34),
                    // Color.fromARGB(255, 255, 177, 41)
                  ]),
                ),
                padding: const EdgeInsets.all(0),
                child: Text(
                  "Gửi",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
