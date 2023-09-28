import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, this.thick = 8});
  final thick;
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: thick,
      color: dividerColor,
    );
  }
}
