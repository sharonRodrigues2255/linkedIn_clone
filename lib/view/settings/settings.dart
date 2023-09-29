import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        actions: [
          CircleAvatar(
              radius: 12,
              backgroundColor: kblack,
              child: Icon(
                Icons.question_mark_outlined,
                size: 20,
                color: kwhite,
              )),
          width10
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SettingsItems(
          icon: CircleAvatar(
            backgroundImage: NetworkImage(Profile.profilePicture),
          ),
          title: "Settings",
          size: 32.0,
        ),
      ),
    );
  }
}

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
        width10,
        Text(
          title,
          style: myfont(size: size),
        )
      ],
    );
  }
}
