import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfomationDetailScreen extends StatefulWidget {
  String name, phone, address, note;
  InfomationDetailScreen(
      {Key key, this.name, this.address, this.phone, this.note})
      : super(key: key);
  @override
  _InfomationDetailScreenState createState() => _InfomationDetailScreenState();
}

class _InfomationDetailScreenState extends State<InfomationDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Bước 3"),
        centerTitle: true,
        shadowColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Form(
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
                            "Thông tin chi tiết",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          Container(
                            alignment: Alignment.center,
                            //margin: EdgeInsets.symmetric(horizontal: 40),
                            margin: const EdgeInsets.only(left: 5, top: 30),
                            child: Text(
                              'Họ và tên: ',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(left: 5, top: 30),
                            child: Text(
                              widget.name,
                            ),
                          ),
                        ],
                      ),
                      if (widget.address != null)
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 20),
                            Container(
                              alignment: Alignment.topLeft,
                              //margin: EdgeInsets.symmetric(horizontal: 40),
                              margin: const EdgeInsets.only(left: 5, top: 30),
                              child: Text(
                                'Địa chỉ: ',
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.only(left: 5, top: 30),
                              child: Text(
                                widget.address,
                              ),
                            ),
                          ],
                        ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          Container(
                            alignment: Alignment.topLeft,
                            //margin: EdgeInsets.symmetric(horizontal: 40),
                            margin: const EdgeInsets.only(left: 5, top: 30),
                            child: Text(
                              'Phone: ',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(left: 5, top: 30),
                            child: Text(
                              widget.phone,
                            ),
                          ),
                        ],
                      ),
                      if (widget.note != null)
                        Container(
                          alignment: Alignment.topLeft,
                          //margin: EdgeInsets.symmetric(horizontal: 40),
                          margin: const EdgeInsets.only(
                              left: 5, top: 30, bottom: 10),
                          child: Text(
                            'Lưu ý',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      if (widget.note != null)
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(
                              left: 5, top: 5, bottom: 30),
                          child: Text(
                            widget.note,
                            maxLines: 5,
                            // decoration: InputDecoration(
                            //     border: OutlineInputBorder(
                            //         borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 70),
                        child: RaisedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(),
                            // );
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
                              "Hoàn thành",
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
          ),
        ),
      ),
    );
  }
}
