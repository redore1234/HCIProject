

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SharedComponent {
  static final shared = SharedComponent();
  PreferredSize buildAppBar(String title) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2)
            )
          ]
        ),
        child: AppBar(
          elevation: 0,
          leading: IconButton(icon: SvgPicture.asset("assets/icons/tooth.svg"), onPressed: () {},),
          title: Text(title),
          backgroundColor: Colors.white,

          centerTitle: true,
        ),
      ),
    );
  }
}


//class MainAppBar extends AppBar {
////  final String titleString;
//
////  MainAppBar({@required this.titleString});
//
//  @override
//  Widget build(BuildContext context) {
//    return AppBar(
//      elevation: 0,
//      leading: IconButton(icon: SvgPicture.asset("assets/icons/tooth.svg"), onPressed: () {},),
//      title: Text("sdfsd"),
//      centerTitle: true,
//    );
//  }
//
//}

