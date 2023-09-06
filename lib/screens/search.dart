import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Contants.primary,
      body: Center(
        child: Text(
          "search ppage",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

}