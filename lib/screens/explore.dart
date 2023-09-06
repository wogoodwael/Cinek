import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Contants.primary,
      body: Center(
        child: Text(
          "Explore ppage",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
