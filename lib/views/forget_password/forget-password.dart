import 'package:clinicbookingapp/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'otp.dart';

class VerifyPhoneScreen extends StatefulWidget{
  VerifyPhoneScreen({Key key}) : super(key: key);

  @override
  _VerifyPhoneScreenState createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen>{
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  ScrollController scrollController = ScrollController();

  @override
  void initSate(){
    super.initState();
    phoneVerifyScreen();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: globalKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text('Quên mật khẩu',),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                controller: scrollController,
                physics: ScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 15,),
                    Container(
                      height: 180,
                      width: 180,
                      child: Image.asset(Constants.DENTAL_CLINIC_REF),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      'Xác nhận OTP',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: "Chúng tui sẽ gửi",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontWeight: FontWeight.normal,
                            fontSize: 15.0,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: " mật khẩu ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                            TextSpan(
                              text: "qua số điện thoại này",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.4),
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Text(
                      'Số điện thoại của bạn ....',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                padding: EdgeInsets.symmetric(vertical: 11.8),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 0.5,
                                    ),
                                  ),
                                ),
                                child: Expanded(
                                  child: Text(
                                    '+84- ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 26,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: TextField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 26,
                                ),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      style: BorderStyle.solid,
                                      width: 0.5,
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(vertical: 11.5),
                                  hintText: 'Số điện thoại',
                                  hintStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.2),
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 50,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => VerifyPhoneOTP())
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        width: size.width*0.9,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Colors.indigo,
                        ),
                        child: Text(
                          'Lấy OTP',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void phoneVerifyScreen(){
    SystemChrome.setSystemUIOverlayStyle(
     SystemUiOverlayStyle(
       systemNavigationBarColor: Colors.white,
       statusBarColor: Colors.white,
       systemNavigationBarIconBrightness: Brightness.dark,
       statusBarBrightness: Brightness.dark,
     ),
    );
  }
}