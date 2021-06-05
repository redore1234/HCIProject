import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 130,
          width: 130,
          child: Stack(
            fit: StackFit.expand,
            overflow: Overflow.visible,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/user.png"),
                backgroundColor: Colors.white,
              ),
              Positioned(
                  right: -2,
                  bottom: -14,
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.black)
                      ),
                      onPressed: () {},
                      child: Icon(IconData(0xee39, fontFamily: 'MaterialIcons')),
                    ),
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}