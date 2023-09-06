import 'package:flutter/material.dart';

class SignContainers extends StatelessWidget {
  const SignContainers({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(15)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      )),
    );
  }
}
