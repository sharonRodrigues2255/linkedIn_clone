import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/custom_divider.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/text_and_arrow.dart';
import 'package:linkedin_clone/view/profile_page/widgets/title_tile_widget.dart';
import 'package:linkedin_clone/view/settings/widgets/question_mark_icon.dart';

List visibilityList = [
  "Profile viewing options",
  "Edit your public profile",
  "who can see or download your email address",
  "Connections",
  "who can see members you follow",
  "Who can see your last name",
  "Representing your organizations",
  "Profile discovery and visibility off linkedIn",
  "Profile discovery using email address",
  "Profile discovery using phone number",
  "Blocking"
];

List linkedinActivityVisibilityList = [
  "Manage active status",
  "Share profile updates with your network",
  "Notify connections when you're in the news ",
  "Mentions or tags",
  "followers",
];

class VisibilityScreen extends StatelessWidget {
  const VisibilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visibility"),
        actions: [QuestionMarkIcon(), width10],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            TitileTile(title: "Visibility of your profile & network"),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: visibilityList.length,
                itemBuilder: (context, index) {
                  return TextAndArrow(text: visibilityList[index]);
                }),
            CustomDivider(
              thick: 16.0,
            ),
            TitileTile(title: "Visibility of your LinkedIn activity"),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: linkedinActivityVisibilityList.length,
                itemBuilder: (context, index) {
                  return TextAndArrow(
                      text: linkedinActivityVisibilityList[index]);
                }),
          ],
        ),
      ),
    );
  }
}
