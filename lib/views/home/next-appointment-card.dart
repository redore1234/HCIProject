import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clinicbookingapp/helpers/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NextAppointmentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                  "Lịch hẹn tiếp theo của bạn",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),

            // location of clinic
            Text("\u2022 Địa chỉ: 123 Nguyen Hue, Q. ABC - TP. HCM"),
            SizedBox(
              height: 8,
            ),
            // time of the next appointment
            Text("\u2022 Thời gian: 15 Dec 2021"),
            SizedBox(
              height: 8,
            ),
            // dentist info
            Text("\u2022 Nha sĩ: Chúng tôi sẽ sắp xếp cho bạn nha sĩ tốt nhất"),
            SizedBox(
              height: 8,
            ),
            // Text("\u2022 Nha sĩ: Nguyen Duc Huy"),
            // SizedBox(
            //   height: 8,
            // ),
            // // Nurse info
            // Text("\u2022 Y tá: Nguyen Duc Huy"),
            // SizedBox(
            //   height: 8,
            // ),

            Row(
              children: [
                SizedBox(
                  width: 2,
                ),
                FlatButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.black)),
                    child: Row(
                      children: [
                        Text("Đổi lịch hẹn"),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.date_range_outlined)
                      ],
                    )),
                SizedBox(
                  width: 70,
                ),
                FlatButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
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
