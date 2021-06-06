import 'package:clinicbookingapp/views/history/booking-history.dart';
import 'package:clinicbookingapp/views/information/information.dart';
import 'package:clinicbookingapp/views/login/login.dart';
import 'package:flutter/material.dart';
import 'package:clinicbookingapp/views/profile/profile-pic.dart';
import 'profile-pic.dart';

class ProfileBody extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          ProfilePic(), //profile_picture.dart
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Huy',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),

          SizedBox(
            height: 30.0,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color(0xFFF5F6F9),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyInformationPage()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(IconData(0xee34, fontFamily: 'MaterialIcons')),
                      SizedBox(
                        width: 30.0,
                      ),
                      Expanded(
                          child: Text("Thông tin tài khoản",
                              style: TextStyle(
                                fontSize: 20,
                              ))),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ))),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color(0xFFF5F6F9),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHistoryBooking()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(IconData(0xe314, fontFamily: 'MaterialIcons')),
                      SizedBox(
                        width: 30.0,
                      ),
                      Expanded(
                          child: Text("Lịch sử đặt lịch",
                              style: TextStyle(
                                fontSize: 20,
                              ))),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ))),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color(0xFFF5F6F9),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(IconData(0xef06, fontFamily: 'MaterialIcons')),
                      SizedBox(
                        width: 30.0,
                      ),
                      Expanded(
                          child: Text("Cài đặt",
                              style: TextStyle(
                                fontSize: 20,
                              ))),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ))),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color(0xFFF5F6F9),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(IconData(0xef7c, fontFamily: 'MaterialIcons')),
                      SizedBox(
                        width: 30.0,
                      ),
                      Expanded(
                          child: Text("Thông tin về chúng tôi",
                              style: TextStyle(
                                fontSize: 20,
                              ))),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ))),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color(0xFFF5F6F9),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(IconData(0xe3b3, fontFamily: 'MaterialIcons')),
                      SizedBox(
                        width: 30.0,
                      ),
                      Expanded(
                          child: Text("Đăng xuất",
                              style: TextStyle(
                                fontSize: 20,
                              ))),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  )))
        ],
      ),
    );
  }
}
