import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';

class CurveRectangle extends StatelessWidget {
  const CurveRectangle(
      {super.key,
      required this.mediaWidth,
      required this.title,
      this.color = Colors.black});

  final String title;
  final double mediaWidth;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: mediaWidth * .40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kwhite,
          border: Border.all(color: color)),
      child: Center(
          child: Text(
        title,
        style: myfont(color: color, weight: regular, size: 16.0),
      )),
    );
  }
}
