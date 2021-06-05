import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final String title;

  const Background({
    @required this.title,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height / 3,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Positioned(
          //   top: 0,
          //   right: 0,
          //   child: Image.asset("assets/images/top1.png", width: size.width),
          // ),
          // Positioned(
          //   top: 0,
          //   right: 0,
          //   child: Image.asset("assets/images/top2.png", width: size.width),
          // ),
          Positioned(
            top: 40,
            child: Image.asset("assets/images/dental_clinic_logo.jpg",
                width: size.width * 0.35),
          ),
          Positioned(
            bottom: 20,
            child: Container(
              margin: const EdgeInsets.only(top: 50, bottom: 20),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                // "DENTAL CLINIC LOGIN",
                title,
                style: TextStyle(
                    // fontWeight: FontWeight.bold,

                    fontSize: 25,
                    color: Colors.blueAccent),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   child: Image.asset("assets/images/bottom1.png", width: size.width),
          // ),
          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   child: Image.asset("assets/images/bottom2.png", width: size.width),
          // ),
        ],
      ),
    );
  }
}
