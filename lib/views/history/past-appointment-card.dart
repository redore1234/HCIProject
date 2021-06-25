import 'package:clinicbookingapp/views/reserve/stepper_reserve.dart';
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
            bookingHistoryComponent(
                context,
                size,
                "Nguyễn Thanh Tùng",
                "30/5/2021",
                "123 Nguyễn Huệ, Q. ABC - TP.HCM",
                "09080056325",
                "Bọc răng sứ"),
            SizedBox(
              height: 15.0,
            ),
            bookingHistoryComponent(
                context,
                size,
                "Nguyễn Quang Dung",
                "26/5/2021",
                "123 Nguyễn Huệ, Q. ABC - TP.HCM",
                "09080056325",
                "PHỤC HÌNH THÁO LẮP - Răng sứ tháo lắp"),
            SizedBox(
              height: 15.0,
            ),
            bookingHistoryComponent(
                context,
                size,
                "Nguyễn Quang Hải",
                "26/5/2021",
                "123 Nguyễn Huệ, Q. ABC - TP.HCM",
                "09080056325",
                "PHỤC HÌNH THÁO LẮP - Răng sứ tháo lắp"),
          ],
        ));
  }

  Container bookingHistoryComponent(
      BuildContext context,
      size,
      String doctorName,
      String date,
      String address,
      String phone,
      String service) {
    return Container(
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
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          // dentist info
          Text("\u2022 Bác sĩ: " + doctorName), //Nguyen Thanh Tung
          SizedBox(
            height: 12,
          ),

          // time of the next appointment
          Text("\u2022 Ngày: " + date), //30/5/2021
          SizedBox(
            height: 12,
          ),

          // // location of clinic
          Text("\u2022 Địa chỉ: " + address), //123 Nguyen Hue, Q. ABC - TP. HCM
          SizedBox(
            height: 12,
          ),

          // Phonenumber of dental
          Text("\u2022 Số Điện Thoại: " + phone), //09080056325
          SizedBox(
            height: 12,
          ),

          // code and name service
          Text("\u2022 Dịch Vụ: " + service), //Bọc răng sứ
          SizedBox(
            height: 12,
          ),

          // number of service
          // Text("\u2022 Đơn Vị: 2 răng"),
          // SizedBox(
          //   height: 12,
          // ),

          // total price
          // Text("\u2022 Giá(VND): 4.000.000"),
          // SizedBox(
          //   height: 12,
          // ),

          buttonBooking(context, size)
        ],
      ),
    );
  }

  Container buttonBooking(BuildContext context, size) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: RaisedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => StepperReserve()));
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
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
    );
  }
}
