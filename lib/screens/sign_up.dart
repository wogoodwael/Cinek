// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/widgets/custom_button.dart';
import 'package:movies_app/widgets/icon_containers.dart';
import 'package:movies_app/widgets/sign_containers.dart';
import 'package:movies_app/widgets/text_field_containers.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Contants.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/logo.png",
                    width: 170,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Your Cinematic Experience , Elevated",
                style: TextStyle(color: Colors.amber, fontSize: 7),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, 'login');
                      },
                      child:
                          SignContainers(text: "Log in", color: Colors.white)),
                  SizedBox(
                    width: 50,
                  ),
                  SignContainers(text: "Sign Up", color: Contants.secondary)
                ],
              ),
              SizedBox(
                height: 50,
              ),
              TextFieldContainer(hintText: "Phone Number"),
              TextFieldContainer(hintText: "Password"),
              TextFieldContainer(hintText: "Confirm Password"),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                text: 'Sign Up',
                onpress: () {
                  Navigator.pushReplacementNamed(context, 'nav');
                },
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "OR",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 30,
                  ),
                  IconsContainer(icon: FontAwesomeIcons.facebookF),
                  IconsContainer(icon: FontAwesomeIcons.instagram),
                  IconsContainer(icon: FontAwesomeIcons.twitter),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
