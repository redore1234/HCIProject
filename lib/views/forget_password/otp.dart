import 'package:clinicbookingapp/helpers/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyPhoneOTP extends StatefulWidget{
  VerifyPhoneOTP ({Key key}) : super(key: key);
  @override
  _VerifyPhoneOTPState createState() => _VerifyPhoneOTPState();
}

class _VerifyPhoneOTPState extends State<VerifyPhoneOTP>{
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  ScrollController scrollController = ScrollController();

  @override
  void initState(){
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
        title: Text('Nhập mã OTP',),
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
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Container(
                      height: 180,
                      width: 180,
                      child: Image.asset(Constants.DENTAL_CLINIC_REF),
                    ),
                    SizedBox(height: 24,),
                    Text(
                      'Xác thực mã OTP',
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15,),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Nhập mã OTP ',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 15.5,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '+84937145660',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.5,
                            ),
                          ),
                        ]
                      ),
                    ),
                    SizedBox(height: 24,),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: PhoneVerifyTextField(),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            flex: 1,
                            child: PhoneVerifyTextField(),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            flex: 1,
                            child: PhoneVerifyTextField(),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            flex: 1,
                            child: PhoneVerifyTextField(),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            flex: 1,
                            child: PhoneVerifyTextField(),
                          ),
                          Expanded(
                            flex: 1,
                            child: PhoneVerifyTextField(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24,),
                    RichText(
                      text: TextSpan(
                        text: 'Không nhận được mã OTP? ',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Gửi lại',
                            style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0
                            ),
                            recognizer: TapGestureRecognizer()..onTap = (){
                              //Do something
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 34,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      width: size.width*0.9,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: Colors.indigo,
                      ),
                      child: Text(
                        'Xác thực',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    )
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

class PhoneVerifyTextField extends StatelessWidget{
  const PhoneVerifyTextField({Key key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      style: TextStyle(
        color: Colors.black.withOpacity(0.3),
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        hintText: '0',
        hintStyle: TextStyle(
          color: Colors.black.withOpacity(0.3),
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),

        ),
      ),
    );
  }


}