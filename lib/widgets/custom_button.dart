import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.text, this.onpress});
  final String text;
  void Function()? onpress;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 100,
      height: 45,
      shape: StadiumBorder(),
      color: Contants.secondary,
      onPressed: onpress,
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
      ),
    );
  }
}
