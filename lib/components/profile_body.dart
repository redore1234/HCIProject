import 'package:flutter/material.dart';
import 'profile_picture.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.0,),
        ProfilePic(),  //profile_picture.dart
        SizedBox(height: 30.0,),
        Text(
            'Long',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),
        ),

        SizedBox(height: 30.0,),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.account_box_outlined),
                    SizedBox(width: 30.0,),
                    Expanded(child: Text(
                        "My account",
                        style: TextStyle(
                          fontSize: 20,
                        )
                      )
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                )
            )
        ),

        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.history_outlined),
                    SizedBox(width: 30.0,),
                    Expanded(child: Text(
                        "Booking's History",
                        style: TextStyle(
                          fontSize: 20,
                        )
                    )
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                )
            )
        ),

        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.build_outlined),
                    SizedBox(width: 30.0,),
                    Expanded(child: Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 20,
                        )
                    )
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                )
            )
        ),

        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.contact_support_outlined),
                    SizedBox(width: 30.0,),
                    Expanded(child: Text(
                        "About us",
                        style: TextStyle(
                          fontSize: 20,
                        )
                    )
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                )
            )
        ),

        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: FlatButton(
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Color(0xFFF5F6F9),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.logout_outlined),
                    SizedBox(width: 30.0,),
                    Expanded(child: Text(
                        "Log out",
                        style: TextStyle(
                          fontSize: 20,
                        )
                    )
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                )
            )
        )
      ],
    );
  }
}
