import 'package:clinicbookingapp/views/appointment_detail/appointment_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clinicbookingapp/helpers/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NextAppointmentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sampleAppointment = new Appointment(
      "Huy",
      "099125423",
      "Nha khoa Thủ Đức",
      "123 Phạm Văn Đồng, phường TCH, quận Thủ Đức",
      "20/7/2021 - 18:00",
      "Bọc răng sứ",
    );
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
            Text("\u2022 Địa chỉ: 123 Phạm Văn Đồng, phường TCH, quận Thủ Đức"),
            SizedBox(
              height: 8,
            ),
            // time of the next appointment
            Text("\u2022 Thời gian: 20/7/2021 - 18:00"),
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

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: GestureDetector(
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AppoinmentDetailScreen(sampleAppointment)))
                },
                child: Text(
                  "Xem chi tiết lịch hẹn",
                  style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    // color: Color(0xFF2661FA)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
