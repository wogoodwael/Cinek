// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 270,
          height: 55,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hintText,
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 17))),
            ),
          ),
        ),
           SizedBox(
              height: 30,
            ),
      ],
    );
  }
}
