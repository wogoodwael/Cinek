// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/widgets/custom_button.dart';
import 'package:movies_app/widgets/icon_containers.dart';
import 'package:movies_app/widgets/sign_containers.dart';
import 'package:movies_app/widgets/text_field_containers.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                    SignContainers(text: "Log in", color: Contants.secondary),
                    SizedBox(
                      width: 50,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, 'SignUp');
                        },
                        child: SignContainers(
                            text: "Sign Up", color: Colors.white))
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                TextFieldContainer(hintText: "Phone Number"),
                TextFieldContainer(hintText: "Password"),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: 'Login',
                  onpress: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have Account? ",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'SignUp');
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            color: Contants.secondary,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
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
        ));
  }
}
