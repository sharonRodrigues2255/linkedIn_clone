import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/text_and_arrow.dart';
import 'package:linkedin_clone/view/profile_page/widgets/title_tile_widget.dart';
import 'package:linkedin_clone/view/settings/widgets/question_mark_icon.dart';

List notificationsYouRecieveList = [
  "Searching for a job",
  "Hiring someone",
  "Connecting with others",
  "Posting and commenting",
  "Messaging",
  "Groups",
  "Pages",
  "Attending event",
  "News and reports",
  "Updating your profile",
  "Verifications"
];

class NotificationsSettings extends StatelessWidget {
  const NotificationsSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        actions: [QuestionMarkIcon(), width10],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          TitileTile(title: "Notifications you receive"),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: notificationsYouRecieveList.length,
              itemBuilder: (context, index) {
                return TextAndArrow(text: notificationsYouRecieveList[index]);
              }),
        ],
      )),
    );
  }
}
