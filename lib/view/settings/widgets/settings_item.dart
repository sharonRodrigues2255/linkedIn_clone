import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';

class SettingsItems extends StatelessWidget {
  const SettingsItems(
      {super.key, required this.icon, required this.title, this.size = 20});
  final Widget icon;
  final String title;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        width20,
        Text(
          title,
          style: myfont(size: size),
        )
      ],
    );
  }
}
