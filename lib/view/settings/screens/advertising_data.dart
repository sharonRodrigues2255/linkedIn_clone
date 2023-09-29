import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/custom_divider.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/text_and_arrow.dart';
import 'package:linkedin_clone/view/profile_page/widgets/title_tile_widget.dart';
import 'package:linkedin_clone/view/settings/widgets/question_mark_icon.dart';

List advertisingPreferences = [
  "Profile data for personalizing ads",
  "Interst categories",
];

List dataCollectedOnLinkedin = [
  "Connections",
  "Location",
  "Demographics",
  "Companies you follow",
  "Groups",
  "Education",
  "Job information",
  "Employer",
];

List thirdPartyData = [
  "Audience insights for websites you visit",
  "Ads outside of LinkedIn",
  "Interactions with businesses",
  "Ad-related actions"
];

class AdvertisingData extends StatelessWidget {
  const AdvertisingData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Advertising data"),
        actions: [QuestionMarkIcon(), width10],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            TitileTile(title: "Advertising preferences"),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: advertisingPreferences.length,
                itemBuilder: (context, index) {
                  return TextAndArrow(text: advertisingPreferences[index]);
                }),
            CustomDivider(
              thick: 16.0,
            ),
            TitileTile(title: "Data collected on LinkedIn"),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: dataCollectedOnLinkedin.length,
                itemBuilder: (context, index) {
                  return TextAndArrow(text: dataCollectedOnLinkedin[index]);
                }),
            CustomDivider(
              thick: 16.0,
            ),
            TitileTile(title: "Third-party data"),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: thirdPartyData.length,
                itemBuilder: (context, index) {
                  return TextAndArrow(text: thirdPartyData[index]);
                }),
          ],
        ),
      ),
    );
  }
}
