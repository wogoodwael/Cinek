// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movies_app/constants/color.dart';

class MoviesContainer extends StatefulWidget {
  MoviesContainer({super.key, required this.img, required this.text});
  final String img;
  final String text;

  @override
  State<MoviesContainer> createState() => _MoviesContainerState();
}

class _MoviesContainerState extends State<MoviesContainer> {
  bool ontapped = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 200,
      child: Column(
        children: [
          Image.asset(
            widget.img,
            width: 80,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Contants.secondary),
                child: Icon(
                  Icons.more_horiz,
                  size: 15,
                ),
              ),
              Container(
                width: 50,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Contants.secondary),
                child: Center(
                    child: Text(
                  "Watch",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    ontapped = !ontapped;
                  });
                },
                
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Contants.secondary),
                  child: !ontapped
                      ? Icon(
                          Icons.bookmark_border_outlined,
                          size: 15,
                        )
                      : Icon(
                          Icons.bookmark_outlined,
                          size: 15,
                        ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
