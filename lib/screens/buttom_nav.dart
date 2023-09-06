// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';
import 'package:movies_app/screens/explore.dart';
import 'package:movies_app/screens/home.dart';

import 'package:movies_app/screens/profile.dart';
import 'package:movies_app/screens/search.dart';

class ButtomNav extends StatefulWidget {
  const ButtomNav({super.key});

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  List<Widget> screens = [HomePage(), Explore(), Search(), Profile()];
  int index = 0;
  void selectedItem(int selected) {
    setState(() {
      index = selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Contants.primary,
        selectedItemColor: Contants.secondary,
        unselectedItemColor: Colors.white,
        currentIndex: index,
        onTap: selectedItem,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'explore'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile')
        ],
      ),
      body: screens.elementAt(index),
    );
  }
}
