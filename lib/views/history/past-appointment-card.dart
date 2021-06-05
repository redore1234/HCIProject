import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clinicbookingapp/helpers/constants.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PastAppointmentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(const Radius.circular(4)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 2)),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        Constants.CALENDAR_ICON_REF,
                        height: 30.0,
                        width: 30.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Lịch Hẹn",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // dentist info
                  Text("\u2022 Bác sĩ: Nguyen Thanh Tung"),
                  SizedBox(
                    height: 12,
                  ),

                  // time of the next appointment
                  Text("\u2022 Ngày: 30/5/2021"),
                  SizedBox(
                    height: 12,
                  ),

                  // location of clinic
                  Text("\u2022 Địa chỉ: 123 Nguyen Hue, Q. ABC - TP. HCM"),
                  SizedBox(
                    height: 12,
                  ),

                  // Phonenumber of dental
                  Text("\u2022 Phone: 09080056325"),
                  SizedBox(
                    height: 12,
                  ),

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: size.width * 0.5,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          gradient: new LinearGradient(colors: [
                            Color.fromARGB(255, 255, 136, 31),
                            Color.fromARGB(255, 255, 136, 31)
                          ]),
                        ),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "Đặt lịch lại",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        Constants.CALENDAR_ICON_REF,
                        height: 30.0,
                        width: 30.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Lịch Hẹn",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // dentist info
                  Text("\u2022 Bác sĩ: Nguyen Quang Dung"),
                  SizedBox(
                    height: 12,
                  ),

                  // time of the next appointment
                  Text("\u2022 Ngày: 26/5/2021"),
                  SizedBox(
                    height: 12,
                  ),

                  // location of clinic
                  Text("\u2022 Địa chỉ: 123 Nguyen Hue, Q. ABC - TP. HCM"),
                  SizedBox(
                    height: 12,
                  ),

                  // Phonenumber of dental
                  Text("\u2022 Phone: 09080056325"),
                  SizedBox(
                    height: 12,
                  ),

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: size.width * 0.5,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          gradient: new LinearGradient(colors: [
                            Color.fromARGB(255, 255, 136, 31),
                            Color.fromARGB(255, 255, 136, 31)
                          ]),
                        ),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "Đặt lịch lại",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        Constants.CALENDAR_ICON_REF,
                        height: 30.0,
                        width: 30.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Lịch Hẹn",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // dentist info
                  Text("\u2022 Bác sĩ: Vo Ba Duy"),
                  SizedBox(
                    height: 12,
                  ),

                  // time of the next appointment
                  Text("\u2022 Ngày: 20/5/2021"),
                  SizedBox(
                    height: 12,
                  ),

                  // location of clinic
                  Text("\u2022 Địa chỉ: 123 Nguyen Hue, Q. ABC - TP. HCM"),
                  SizedBox(
                    height: 12,
                  ),

                  // Phonenumber of dental
                  Text("\u2022 Phone: 09080056325"),
                  SizedBox(
                    height: 12,
                  ),

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: size.width * 0.5,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          gradient: new LinearGradient(colors: [
                            Color.fromARGB(255, 255, 136, 31),
                            Color.fromARGB(255, 255, 136, 31)
                          ]),
                        ),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "Đặt lịch lại",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        Constants.CALENDAR_ICON_REF,
                        height: 30.0,
                        width: 30.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Lịch Hẹn",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // dentist info
                  Text("\u2022 Bác sĩ: Nguyen Duc Huy"),
                  SizedBox(
                    height: 12,
                  ),

                  // time of the next appointment
                  Text("\u2022 Ngày: 14/5/2021"),
                  SizedBox(
                    height: 12,
                  ),

                  // location of clinic
                  Text("\u2022 Địa chỉ: 123 Nguyen Hue, Q. ABC - TP. HCM"),
                  SizedBox(
                    height: 12,
                  ),

                  // Phonenumber of dental
                  Text("\u2022 Phone: 09080056325"),
                  SizedBox(
                    height: 12,
                  ),

                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: size.width * 0.5,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          gradient: new LinearGradient(colors: [
                            Color.fromARGB(255, 255, 136, 31),
                            Color.fromARGB(255, 255, 136, 31)
                          ]),
                        ),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "Đặt lịch lại",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
