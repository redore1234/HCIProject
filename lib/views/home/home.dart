import 'package:clinicbookingapp/views/detail/detail-clinic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clinicbookingapp/views/home/next-appointment-card.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:clinicbookingapp/helpers/constants.dart';
import 'package:clinicbookingapp/views/global/shared-component.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedComponent.shared.buildAppBar("Dental Clinic Booking"),
      body: buildBody(context),
    );
  }

  IconButton createIconButtonForTabBar(String imageRef) {
    return IconButton(
      icon: SvgPicture.asset(
        imageRef,
        height: 30.0,
        width: 30.0,
        color: Constants.SILVER,
      ),
      onPressed: () {},
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/tooth.svg"),
        onPressed: () {},
      ),
//      title: Text("Home"),
      centerTitle: true,
    );
  }

  RatingBar _buildRatingBar(double rating) {
    return RatingBar.builder(
      initialRating: rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemSize: 20,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {},
    );
  }

  Widget _createHotServiceCard(String imageRef, String title, String nameClinic,
      String description, double rating, String price, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.all(const Radius.circular(12)),
                ),
                width: 160.0,
                child: Image.asset(Constants.IMAGE_FOLDER_REF + imageRef),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'T???i ' + nameClinic,
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(description),
            SizedBox(
              height: 8.0,
            ),
            Text('Gi??: ' + price + ' VND'),
            SizedBox(
              height: 8.0,
            ),
            _buildRatingBar(rating),
            SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _createNewsCard(String imageRef, String title, BuildContext context,
      {Widget discountTagStrings}) {
//    class Clinic{
//    String name;
//    String phone;
//    String email;
//    String image;
//    String address;
//    String description;
//    double totalRating;
//    Clinic(this.image, this.name, this.phone, this.email, this.description, this.address, this.totalRating);
//    }
    if (discountTagStrings == null) {
      discountTagStrings = Container();
    }
    var sampleClinic = new Clinic(
        "hop1.jpg",
        title,
        "1234-5678",
        "clinic@gmail.com",
        "Ph??ng kh??m d?????c trang b??? c?? s??? v???t ch???t hi???n ?????i, c??ng v???i ?????i ng?? nh??n vi??n c?? tay ngh??? cao lu??n s???n s??ng ph???c v??? qu?? kh??ch",
        "123 Ph???m V??n ?????ng, ph?????ng TCH, qu???n Th??? ?????c",
        4.0);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailClinicScreen(sampleClinic)),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.all(const Radius.circular(12)),
                  color: Colors.transparent,
                ),
                width: 160.0,
                child: Image.asset(imageRef),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 17.0,
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              "Kho???ng c??ch: 3.5 km",
              style: TextStyle(color: Constants.GRAY),
            ),
            _buildRatingBar(4.0),
            // ignore: unused_local_variable
            discountTagStrings

//            for (var i in discountTagStrings)
//              Text(
//                i.toString(),
//                style: TextStyle(
//                    fontSize: 12.5, backgroundColor: Color(0xffffdfca)),
//              ),
//            Text("Tr??m r??ng t??? 400.000??\nch??? c??n 350.000??", style: TextStyle(fontSize: 12.5, backgroundColor: Color(0xffffdfca)),)
          ],
        ),
      ),
    );
  }

  Container buildBody(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            children: <Widget>[
              // 1
              Padding(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Th??? 6, ng??y 21 th??ng 5",
                      style: TextStyle(color: Constants.PRIMARY_COLOR),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Ch??o! Huy",
                      style: TextStyle(fontSize: 32),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                padding: EdgeInsets.only(left: 12),
              ),

              // your next appointment
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: NextAppointmentCard(),
              ),

              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  "Nha Khoa G???n ????y",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //2
              // news session
              // horizontal list
              Container(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _createNewsCard(Constants.IMAGE_FOLDER_REF + "hop1.jpg",
                        "Nha khoa Th??? ?????c", context),
                    _createNewsCard(Constants.IMAGE_FOLDER_REF + "hop2.jpg",
                        "Nha khoa B", context),
                    _createNewsCard(Constants.IMAGE_FOLDER_REF + "hop1.jpg",
                        "Nha khoa C", context),
                    _createNewsCard(Constants.IMAGE_FOLDER_REF + "hop2.jpg",
                        "Nha khoa D", context),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  "??u ????i",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //2
              // news session
              // horizontal list
              Container(
                constraints: BoxConstraints(maxHeight: double.infinity),
                height: 220,
                child: ListView(
//                    shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _createNewsCard(
                      Constants.IMAGE_FOLDER_REF + "hop3.jpg",
                      "Nha khoa Ng??n H??",
                      context,
                      discountTagStrings: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text(
                              "Tr??m r??ng gi?? ",
                              style: TextStyle(
                                fontSize: 12.5, backgroundColor: Color(0xffffdfca),),
                            ),
                            Text(
                              "400.000?? ",
                              style: TextStyle(
                                fontSize: 12.5, backgroundColor: Color(0xffffdfca), decoration: TextDecoration.lineThrough),
                            ),

                          ],),
                          Row(children: [
                            Text(
                              "ch??? c??n 350.000??",
                              style: TextStyle(
                                fontSize: 12.5, backgroundColor: Color(0xffffdfca),),
                            ),
                          ],)
                        ],
                      ),
                    ),
                    _createNewsCard(
                      Constants.IMAGE_FOLDER_REF + "hop4.jpg",
                      "Nha khoa V??nh Ph??c",
                      context,
                      discountTagStrings:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text(
                              "T???y r??ng gi?? ",
                              style: TextStyle(
                                fontSize: 12.5, backgroundColor: Color(0xffffdfca),),
                            ),
                            Text(
                              "200.000?? ",
                              style: TextStyle(
                                  fontSize: 12.5, backgroundColor: Color(0xffffdfca), decoration: TextDecoration.lineThrough),
                            ),

                          ],),
                          Row(children: [
                            Text(
                              "ch??? c??n 150.000??",
                              style: TextStyle(
                                fontSize: 12.5, backgroundColor: Color(0xffffdfca),),
                            ),
                          ],)
                        ],
                      ),
                    ),
                    _createNewsCard(
                      Constants.IMAGE_FOLDER_REF + "hop3.jpg",
                      "Nha khoa C",
                      context,
                      discountTagStrings:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text(
                              "Tr??m r??ng gi?? ",
                              style: TextStyle(
                                fontSize: 12.5, backgroundColor: Color(0xffffdfca),),
                            ),
                            Text(
                              "400.000?? ",
                              style: TextStyle(
                                  fontSize: 12.5, backgroundColor: Color(0xffffdfca), decoration: TextDecoration.lineThrough),
                            ),

                          ],),
                          Row(children: [
                            Text(
                              "ch??? c??n 350.000??",
                              style: TextStyle(
                                fontSize: 12.5, backgroundColor: Color(0xffffdfca),),
                            ),
                          ],)
                        ],
                      ),
                    ),
                    _createNewsCard(
                      Constants.IMAGE_FOLDER_REF + "hop4.jpg",
                      "Nha khoa D",
                      context,
                      discountTagStrings:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text(
                              "T???y r??ng gi?? ",
                              style: TextStyle(
                                fontSize: 12.5, backgroundColor: Color(0xffffdfca),),
                            ),
                            Text(
                              "200.000?? ",
                              style: TextStyle(
                                  fontSize: 12.5, backgroundColor: Color(0xffffdfca), decoration: TextDecoration.lineThrough),
                            ),

                          ],),
                          Row(children: [
                            Text(
                              "ch??? c??n 150.000??",
                              style: TextStyle(
                                fontSize: 12.5, backgroundColor: Color(0xffffdfca),),
                            ),
                          ],)
                        ],
                      ),
                    ),
                  ],
                ),
              ),

//              SizedBox(
//                height: 50,
//              ),
//
//              Padding(
//                padding: const EdgeInsets.only(left: 12.0),
//                child: Text(
//                  "??u ????i",
//                  style: TextStyle(fontSize: 24),
//                ),
//              ),
//              SizedBox(
//                height: 10,
//              ),
//              //3
//              // discount session
//              // horizontal list
//              Container(
//                height: 130.0,
//                child: ListView(
//                  scrollDirection: Axis.horizontal,
//                  children: <Widget>[
//                    // discount card 1
//                    DiscountCard(
//                      [
//                        Color(0xFF2E3862),
//                        Color(0xFF572A37),
//                      ],
//                      Column(
//                        children: [
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: [
//                              Padding(
//                                padding: const EdgeInsets.all(8.0),
//                                child: Text("300.000",
//                                    style: TextStyle(
//                                        decoration: TextDecoration.lineThrough,
//                                        color: Colors.white,
//                                        fontSize: 22.0)),
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(4.0),
//                                child: Text("12/7/2021",
//                                    style: TextStyle(
//                                        color: Colors.white, fontSize: 12.0)),
//                              ),
//                            ],
//                          ),
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: [
//                              Padding(
//                                padding:
//                                    const EdgeInsets.only(left: 12.0, top: 8.0),
//                                child: Text("D???ch v??? \ntr??m r??ng\nch??? c??n",
//                                    style: TextStyle(
//                                        color: Colors.white, fontSize: 14.0)),
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.only(
//                                    top: 12.0, right: 8.0),
//                                child: Text("250.000",
//                                    style: TextStyle(
//                                        color: Colors.white, fontSize: 24.0)),
//                              )
//                            ],
//                          ),
//                          Padding(
//                            padding: EdgeInsets.all(6.0),
//                            child: Text('Nha khoa Vinh S??n',
//                                style: TextStyle(
//                                    color: Colors.white, fontSize: 15.0)),
//                          ),
//                        ],
//                      ),
//                    ),
//                    // discount card 2
//                    DiscountCard(
//                      [
//                        Color(0xFF8E54E9),
//                        Color(0xFF4776E6),
//                      ],
//                      Column(
//                        children: [
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.start,
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: [
//                              Padding(
//                                padding:
//                                    const EdgeInsets.only(left: 8.0, top: 18.0),
//                                child: Text("Gi???m",
//                                    style: TextStyle(
//                                        color: Colors.white, fontSize: 18.0)),
//                              ),
//                              Padding(
//                                padding:
//                                    const EdgeInsets.only(left: 0.0, top: 32.0),
//                                child: Text("10%",
//                                    style: TextStyle(
//                                        color: Colors.white, fontSize: 38.0)),
//                              ),
//                              Padding(
//                                padding:
//                                    const EdgeInsets.only(left: 0.0, top: 36.0),
//                                child: Text(
//                                    " t???t c???\n d???ch v???\n th??? 2\n h??ng tu???n",
//                                    style: TextStyle(
//                                        color: Colors.white, fontSize: 12.0)),
//                              )
//                            ],
//                          ),
//                          Padding(
//                            padding: EdgeInsets.all(6.0),
//                            child: Text('Nha khoa Kim',
//                                style: TextStyle(
//                                    color: Colors.white, fontSize: 15.0)),
//                          ),
//                        ],
//                      ),
//                    ),
//
//                    // discount card 3
//                    DiscountCard(
//                      [
//                        Color(0xFF344173),
//                        Color(0xFF4A7E79),
//                      ],
//                      Column(
//                        children: [
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: [
//                              Padding(
//                                padding: const EdgeInsets.all(8.0),
//                                child: Text("400.000",
//                                    style: TextStyle(
//                                        decoration: TextDecoration.lineThrough,
//                                        color: Colors.white,
//                                        fontSize: 22.0)),
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.all(4.0),
//                                child: Text("12/7/2021",
//                                    style: TextStyle(
//                                        color: Colors.white, fontSize: 12.0)),
//                              )
//                            ],
//                          ),
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: [
//                              Padding(
//                                padding:
//                                    const EdgeInsets.only(left: 12.0, top: 8.0),
//                                child: Text("D???ch v??? \nc???o v??i r??ng\nch??? c??n",
//                                    style: TextStyle(
//                                        color: Colors.white, fontSize: 14.0)),
//                              ),
//                              Padding(
//                                padding: const EdgeInsets.only(
//                                    top: 12.0, right: 8.0),
//                                child: Text("350.000",
//                                    style: TextStyle(
//                                        color: Colors.white, fontSize: 24.0)),
//                              )
//                            ],
//                          ),
//                          Padding(
//                            padding: EdgeInsets.all(6.0),
//                            child: Text('Nha khoa Nam ??',
//                                style: TextStyle(
//                                    color: Colors.white, fontSize: 15.0)),
//                          ),
//                        ],
//                      ),
//                    ),
//
////                  _createNewsCard(Constants.IMAGE_FOLDER_REF + "dis1.png", "Giam gia lan dau"),
////                  _createNewsCard(Constants.IMAGE_FOLDER_REF + "dis2.png", "Giam gia thu 2"),
////                  _createNewsCard(Constants.IMAGE_FOLDER_REF + "dis1.png", "giam gia"),
////                  _createNewsCard(Constants.IMAGE_FOLDER_REF + "dis2.png", "giam gia"),
//                  ],
//                ),
//              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  "D???ch v??? n???i b???t",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _createHotServiceCard(
                        'cay-ghep-implant.jpg',
                        'C???Y GH??P IMPLANT',
                        'nha khoa ?????i Nam',
                        'Gi???i ph??p t???i ??u cho ng?????i m???t r??ng',
                        4,
                        '11.750.000',
                        context),
                    SizedBox(
                      width: 10,
                    ),
                    _createHotServiceCard(
                        'khoaThammi.jpg',
                        'R??ng s??? th???m m??',
                        'nha khoa V??nh S??n',
                        'Bi???n n??? c?????i b???n tr??? n??n t???a s??ng',
                        4,
                        '1.500.000',
                        context),
                    SizedBox(
                      width: 10,
                    ),
                    _createHotServiceCard(
                        'niengrang.jpg',
                        'Ni???ng r??ng d??y s???t',
                        'nha khoa Nam ??',
                        'Gi???i ph??t t???i ??u kh???c ph??? khuy???t ??i???m',
                        4,
                        '20.000.000',
                        context),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              // bottom box
              SizedBox(
                height: 80,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
