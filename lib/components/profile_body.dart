import 'package:flutter/material.dart';
import 'profile_picture.dart';

class Body extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30.0,
        ),
        ProfilePic(), //profile_picture.dart
        SizedBox(
          height: 30.0,
        ),
        Text(
          'Long',
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
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.account_box_outlined),
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
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.history_outlined),
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
                    Icon(Icons.build_outlined),
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
                    Icon(Icons.contact_support_outlined),
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
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.logout_outlined),
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
    );
  }
}
