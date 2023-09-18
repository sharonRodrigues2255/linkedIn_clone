import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';

class FollowingRectangle extends StatelessWidget {
  const FollowingRectangle(
      {super.key, required this.title, this.color = Colors.black});

  final Widget title;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kwhite,
          border: Border.all(color: color)),
      child: Center(child: title),
    );
  }
}
