import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clinicbookingapp/views/global/main-tab-bar.dart';
import 'helpers/constants.dart';
import 'views/home/home.dart';
import 'dart:ui';

final GlobalKey<NavigatorState> firstTabNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> secondTabNavKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> thirdTabNavKey = GlobalKey<NavigatorState>();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dental Clinic Booking',
      theme: ThemeData(
        primaryColor: Colors.white,
//        textTheme: Theme.of(context).textTheme.apply(bodyColor: Constants.BLACK),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new CupertinoApp(
        home: MainTabBar(),
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          DefaultMaterialLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
        ],
      ),
    );
  }
}
