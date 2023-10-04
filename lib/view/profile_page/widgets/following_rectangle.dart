import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';

class FollowingRectangle extends StatelessWidget {
  const FollowingRectangle(
      {super.key,
      required this.title,
      this.color = Colors.black,
      this.height = 35,
      this.bgColor = kwhite,
      this.width = 100});

  final Widget title;
  final color;
  final double height;
  final double width;
  final bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: bgColor,
          border: Border.all(color: color)),
      child: Center(child: title),
    );
  }
}
