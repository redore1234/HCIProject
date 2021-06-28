import 'package:clinicbookingapp/views/reserve/stepper_reserve.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clinicbookingapp/views/profile/profile-page.dart';
//import 'package:clinicbookingapp/views/schedule/schedule-page.dart';

import '../home/home.dart';
import '../../main.dart';

class MainTabBar extends StatefulWidget {
  @override
  _MainTabBarState createState() => _MainTabBarState();
}

class _MainTabBarState extends State<MainTabBar> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.calendar_today),
//          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        if (index == 0) {
          return CupertinoTabView(
            navigatorKey: firstTabNavKey,
            builder: (BuildContext context) => Home(),
          );
        } else if (index == 1) {
          return CupertinoTabView(
            navigatorKey: secondTabNavKey,
            builder: (BuildContext context) => ProfilePage(),
          );
          //return CupertinoTabView(navigatorKey: secondTabNavKey, builder: (BuildContext context) => SchedulePage(),);
//          return CupertinoTabView(
//            navigatorKey: secondTabNavKey,
//            builder: (BuildContext context) => StepperReserve(),
//          );
        } else {
          return CupertinoTabView(
            navigatorKey: thirdTabNavKey,
            builder: (BuildContext context) => ProfilePage(),
          );
        }
      },
    );
  }
}
