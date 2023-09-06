import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Contants.primary,
      body: Center(
        child: Text(
          "profile ppage",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
