import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clinicbookingapp/views/home/next-appointment-card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:clinicbookingapp/helpers/constants.dart';
import 'package:clinicbookingapp/views/global/shared-component.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedComponent.shared.buildAppBar("Dental Clinic Booking"),
      body: buildBody(),
    );
  }

  /*
   bottom bar temp

      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 10,
              color: Constants.GRAY
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
//            SvgPicture.asset(Constants.HOME_ICON_REF, height: 30.0,color: Constants.SILVER,)
            createIconButtonForTabBar(Constants.HOME_ICON_REF),
            createIconButtonForTabBar(Constants.CALENDAR_ICON_REF),
            createIconButtonForTabBar(Constants.MORE_ICON_REF),
          ],
        ),
      ),

   */

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
      title: Text("Dental Clinic Booking"),
      centerTitle: true,
    );
  }

  Widget _createNewsCard(String imageRef) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: Column(
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
            height: 10,
          ),
          Text("News title")
        ],
      ),
    );
  }

  Container buildBody() {
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
                      "Fri, 21 May",
                      style: TextStyle(color: Constants.PRIMARY_COLOR),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Chào! Huy",
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
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  "Ưu đãi",
                  style: TextStyle(fontSize: 32),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //3
              // discount session
              // horizontal list
              Container(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _createNewsCard(Constants.IMAGE_FOLDER_REF + "dis1.png"),
                    _createNewsCard(Constants.IMAGE_FOLDER_REF + "dis2.png"),
                    _createNewsCard(Constants.IMAGE_FOLDER_REF + "dis1.png"),
                    _createNewsCard(Constants.IMAGE_FOLDER_REF + "dis2.png"),
                  ],
                ),
              ),

              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  "Tin tức",
                  style: TextStyle(fontSize: 32),
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
                    _createNewsCard(Constants.IMAGE_FOLDER_REF + "den.png"),
                    _createNewsCard(Constants.IMAGE_FOLDER_REF + "braces.png"),
                    _createNewsCard(Constants.IMAGE_FOLDER_REF + "den.png"),
                    _createNewsCard(Constants.IMAGE_FOLDER_REF + "braces.png"),
                  ],
                ),
              ),
              // 3
              Image.asset(Constants.HOME_BACKGROUND),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                "\"Chúng tôi mang tới cho bạn nụ cười\"",
                style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
              )),

              // 4
//            Padding(
//              padding: const EdgeInsets.only(left: 12, top: 24, right: 12),
//              child: Column(children: <Widget>[
//                Text("Your next appointments", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
//
//                InfoCard(),
//                InfoCard(),
//
//
//              ], crossAxisAlignment: CrossAxisAlignment.start,),
//            ),

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
