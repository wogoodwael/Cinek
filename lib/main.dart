import 'package:flutter/material.dart';
import 'package:movies_app/screens/buttom_nav.dart';
import 'package:movies_app/screens/home.dart';
import 'package:movies_app/screens/login.dart';
import 'package:movies_app/screens/sign_up.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'SignUp': (context) => SignUp(),
        'home': (context) => HomePage(),
        'login': (context) => Login(),
        'nav': (context) => ButtomNav() // home page
      },
      initialRoute: 'login',
    );
  }
}
