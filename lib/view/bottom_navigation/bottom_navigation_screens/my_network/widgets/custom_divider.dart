import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 8,
      color: dividerColor,
    );
  }
}
