import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/custom_divider.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_outline,
                  weight: 10,
                  color: kblack,
                ),
                label: Text(
                  "My jobs",
                  style: TextStyle(
                      fontSize: 16, color: kblack, fontWeight: FontWeight.w400),
                )),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.edit_calendar_sharp,
                  color: kblack,
                ),
                label: Text(
                  "Post a free job",
                  style: TextStyle(
                      fontSize: 16, color: kblack, fontWeight: FontWeight.w400),
                ))
          ],
        ),
        const CustomDivider(
          thick: 16.0,
        ),
      ],
    ));
  }
}
