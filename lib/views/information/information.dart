import 'package:clinicbookingapp/helpers/constants.dart';
import 'package:clinicbookingapp/views/profile/profile-pic.dart';
import 'package:flutter/material.dart';

class MyInformationPage extends StatefulWidget {
  @override
  _MyInformationPageState createState() => _MyInformationPageState();
}

class _MyInformationPageState extends State<MyInformationPage> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
        title: Text("Thông tin tài khoản"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              ProfilePic(), //profile_picture.dart
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Thông tin của bạn',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueAccent,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: size.height * 0.0001),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 35, bottom: 20, right: 35),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Họ và Tên *',
                  ),
                  controller: TextEditingController(text: 'Nguyễn Đức Huy'),
                ),
              ),
              SizedBox(height: size.height * 0.0001),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 35, bottom: 20, right: 35),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email *',
                  ),
                  controller: TextEditingController(text: 'user123@gmail.com'),
                ),
              ),
              SizedBox(height: size.height * 0.0001),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 35, bottom: 20, right: 35),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Số điện thoại',
                  ),
                  controller: TextEditingController(text: "099xxxxxxx"),
                ),
              ),
              SizedBox(height: size.height * 0.0001),
              Container(
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.only(left: 35, bottom: 20, right: 35),
                  child: TextField(
                    focusNode: AlwaysDisabledFocusNode(),
                    decoration: InputDecoration(
                      labelText: 'Ngày sinh',
                      border: InputBorder.none,
                    ),
                    controller: TextEditingController(
                        text: '${selectedDate.toLocal()}'.split(' ')[0]),
                    onTap: () {
                      _selectDate(context);
                    },
                  )),
              SizedBox(height: size.height * 0.0001),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 35, bottom: 20, right: 35),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Địa chỉ',
                  ),
                  controller: TextEditingController(
                      text: "341 Nguyễn Trọng Tuyển, P16, Quận Bình Thạnh"),
                ),
              ),
              SizedBox(height: size.height * 0.0001),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(colors: [
                          Constants.PRIMARY_COLOR,
                          Constants.HEAVY_BLUE
                          // Color.fromARGB(255, 255, 136, 34),
                          // Color.fromARGB(255, 255, 177, 41)
                        ])),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "Xác nhận",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
