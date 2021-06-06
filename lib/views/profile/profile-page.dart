import 'package:flutter/material.dart';
import 'profile-body.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ProfileBody()),
    );
  }
}
