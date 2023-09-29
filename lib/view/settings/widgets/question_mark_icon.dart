import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';

class QuestionMarkIcon extends StatelessWidget {
  const QuestionMarkIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 12,
        backgroundColor: kblack,
        child: Icon(
          Icons.question_mark_outlined,
          size: 20,
          color: kwhite,
        ));
  }
}
