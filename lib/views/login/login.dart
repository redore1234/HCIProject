import 'package:clinicbookingapp/views/global/background.dart';
import 'package:clinicbookingapp/views/global/main-tab-bar.dart';
import 'package:clinicbookingapp/views/register/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Background(
                title: "DENTAL CLINIC BOOKING",
              ),
              SizedBox(height: size.height * 0.001),
              Container(
                alignment: Alignment.center,
                //margin: EdgeInsets.symmetric(horizontal: 40),
                margin: const EdgeInsets.only(left: 35, bottom: 20, right: 35),
                child: TextField(
                  decoration: InputDecoration(labelText: "Số điện thoại"),
                ),
              ),
              SizedBox(height: size.height * 0.001),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 35, right: 35),
                child: TextField(
                  decoration: InputDecoration(labelText: "Mật khẩu"),
                  obscureText: true,
                ),
              ),
              SizedBox(height: size.height * 0.001),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: () => {},
                  child: Text(
                    "Lấy lại mật khẩu",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA)),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainTabBar()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                        //color: Colors.blue,
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(colors: [
                          Color.fromARGB(255, 255, 136, 31),
                          Color.fromARGB(255, 255, 136, 31)
                        ])),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "Đăng nhập",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterScreen()))
                  },
                  child: Text(
                    "Bạn chưa có tài khoản? Hãy đăng kí",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2661FA)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
