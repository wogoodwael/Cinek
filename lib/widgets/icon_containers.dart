import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconsContainer extends StatelessWidget {
  const IconsContainer({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Color(0xfff9b436),
                borderRadius: BorderRadius.circular(30)),
            child: Center(child: FaIcon(icon))),
        SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
