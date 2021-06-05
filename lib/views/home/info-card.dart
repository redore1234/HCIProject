

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:clinicbookingapp/helpers/constants.dart';

import 'detail-button-view.dart';

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 4.0, bottom: 4.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.all(const Radius.circular(12.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 1) // change position of shadow
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 18.0, bottom: 18.0),
        child: Row(children: <Widget>[
          // 1
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: SvgPicture.asset(("assets/icons/tooth.svg"), height: 35,),
          ),

          // 2
          Expanded(
            child: Column(children: <Widget>[
              Text("Dr. Nguyen Duc Huy", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
              Container(height: 4, color: Colors.transparent,),
              Text("Thu Oct 24 9:30 am - 10:30 am", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300, color: Constants.GRAY),)
            ], crossAxisAlignment: CrossAxisAlignment.start,),
          ),

          // 3
          DetailButtonView(),
        ],),

      ),
    );
  }

}