import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/view/settings/widgets/settings_item.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SettingsItems(
                icon: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(Profile.profilePicture),
                ),
                title: "Settings",
                size: 32.0,
              ),
              SizedBox(
                height: 40,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        settingsItems[index],
                        SizedBox(
                          height: 30,
                        )
                      ],
                    );
                  }),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text(moreSettings[index]), height20],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

List settingsItems = const [
  SettingsItems(icon: Icon(Icons.person), title: "Account preferences"),
  SettingsItems(icon: Icon(Icons.lock), title: "Sign in & security"),
  SettingsItems(icon: Icon(Icons.remove_red_eye), title: "Visibility"),
  SettingsItems(icon: Icon(Icons.privacy_tip_outlined), title: "Data privacy"),
  SettingsItems(icon: Icon(Icons.calendar_month), title: "Advertising data"),
  SettingsItems(icon: Icon(Icons.notifications), title: "Notifications"),
];

List moreSettings = const [
  "Help center",
  " Professional Community Policies",
  "Privacy Policy",
  "Accessibility",
  "Recommendation Transparency",
  "User Agreement",
  "End User License Agreement",
  "Sign Out",
  "VERSION 4.1.848.1"
];
