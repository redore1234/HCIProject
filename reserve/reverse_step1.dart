import 'package:clinicbookingapp/views/reserve/reserve_step2.dart';
import 'package:clinicbookingapp/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'dart:ui';
import 'choose_time.dart';

class ReserveScreen extends StatefulWidget {
  @override
  _ReserveScreenState createState() => _ReserveScreenState();
}

class _ReserveScreenState extends State<ReserveScreen> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text("Bước 1"),
          centerTitle: true,
          shadowColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            child: Column(
              children: <Widget>[
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "Chọn ngày",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Container(
                        child: DatePicker(
                          DateTime.now(),
                          width: 60,
                          height: 80,
                          controller: _controller,
                          initialSelectedDate: DateTime.now(),
                          selectionColor: Colors.blueAccent,
                          selectedTextColor: Colors.white,
                          onDateChange: (date) {
                            // New date selected
                            setState(() {
                              _selectedValue = date;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      GroupedButton(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ServiceList(service: [
                            new Service("Bọc răng sứ",Constants.IMAGE_FOLDER_REF + 'icon-boc-rang-su-1.png', false),
                            new Service("Cấy ghép implant",Constants.IMAGE_FOLDER_REF + 'trong-rang-implant.png', false),
                            new Service("Niềng răng thẩm mỹ",Constants.IMAGE_FOLDER_REF + 'nieng-rang-tham-my.png', false),
                            new Service("Mặt dán sứ Veneer",Constants.IMAGE_FOLDER_REF + 'rang-su-veneer.png', false),
                            new Service("Tẩy trắng răng",Constants.IMAGE_FOLDER_REF + 'icon-tay-trang-rang-1.png', false),
                            new Service("Nhổ răng khôn",Constants.IMAGE_FOLDER_REF + 'icon-nho-rang-khon-1.png', false),
                            new Service("Bệnh lý nha chu",Constants.IMAGE_FOLDER_REF + 'icon-benh-ly-nha-chu.png', false),
                            new Service("Điều trị tủy",Constants.IMAGE_FOLDER_REF + 'dieu-tri-tuy.png', false),

                          ],)),
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
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(colors: [
                          Color.fromARGB(255, 255, 136, 34),
                          Color.fromARGB(255, 255, 177, 41)
                        ])),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "Tiếp theo",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}