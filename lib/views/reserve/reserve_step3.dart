import 'package:clinicbookingapp/views/reserve/reserve_confirm.dart';
import 'package:flutter/material.dart';
import 'package:clinicbookingapp/helpers/constants.dart';

class InfomationScreen extends StatefulWidget {
  @override
  _InfomationScreenState createState() => _InfomationScreenState();
}

class _InfomationScreenState extends State<InfomationScreen> {
  final _formKey = GlobalKey<FormState>();
  String name, address, phone, note;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 5, top: 20),
                  child: Text(
                    'Họ và tên *',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextFormField(
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Vui lòng không để trống";
                      }
                      return null;
                    },
                    decoration: InputDecoration(),
                    onChanged: (text) {
                      name = text;
                    },
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  //margin: EdgeInsets.symmetric(horizontal: 40),
                  margin: const EdgeInsets.only(left: 5, top: 10),
                  child: Text(
                    'Địa chỉ',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  // margin: const EdgeInsets.only(top: 1),
                  child: TextFormField(
                    onChanged: (text) {
                      address = text;
                    },
                    decoration: InputDecoration(),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  //margin: EdgeInsets.symmetric(horizontal: 40),
                  margin: const EdgeInsets.only(left: 5, top: 10),
                  child: Text(
                    'Số điện thoại *',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  // margin: const EdgeInsets.only(top: 1),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (text) {
                      phone = text;
                    },
                    validator: (String value) {
                      if (value.isEmpty) {
                        return "Vui lòng không để trống";
                      }
                      return null;
                    },
                    decoration: InputDecoration(),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  //margin: EdgeInsets.symmetric(horizontal: 40),
                  margin: const EdgeInsets.only(left: 5, top: 30, bottom: 10),
                  child: Text(
                    'Lưu ý',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  child: TextFormField(
                    onChanged: (text) {
                      note = text;
                    },
                    maxLines: 5,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 70),
                  child: RaisedButton(
                    onPressed: () {
                      // _formKey.currentState.validate();
                      setState(() {
                        if (_formKey.currentState.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InfomationDetailScreen(
                                name: name,
                                address: address,
                                phone: phone,
                                note: note,
                              ),
                            ),
                          );
                        }
                      });
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
                          borderRadius: BorderRadius.circular(80.0),
                          gradient: new LinearGradient(colors: [
                            Constants.PRIMARY_COLOR,
                            Constants.HEAVY_BLUE
//                            Color.fromARGB(255, 255, 136, 34),
//                            Color.fromARGB(255, 255, 177, 41)
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
        ],
      ),
    );
  }
}
