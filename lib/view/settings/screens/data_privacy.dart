import 'package:flutter/material.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/custom_divider.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/text_and_arrow.dart';
import 'package:linkedin_clone/view/profile_page/widgets/title_tile_widget.dart';

List howLinkedInUsesDataList = [
  "Manage your data and activity",
  "Get a copy of your data",
  "Salary data on linkedin",
  "Search history",
  "Personal demographic information",
  "Social , economic , and workplace research"
];

List whoCanReachYouList = [
  "Invitations to connect",
  "invitations from your network",
  "Messages",
  "Research invites"
];

List messagingExpirienceList = [
  "Focused inbox",
  "Reac receipts and typing indicators",
  "Messages suggestions",
  "Message nudges",
  "Automated detection of harmful content",
];

List jobSeekingPreferences = [
  "Job application settings",
  "Share your profile when you click Apply for a job",
  "stored job applicant accounts"
];
List otherApplicatonsList = ["Permitted services", "Microsoft word"];

class DataPrivacy extends StatelessWidget {
  const DataPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Privacy"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            TitileTile(title: "How LInkedIn uses your data"),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: howLinkedInUsesDataList.length,
                itemBuilder: (context, index) {
                  return TextAndArrow(text: howLinkedInUsesDataList[index]);
                }),
            CustomDivider(
              thick: 16.0,
            ),
            TitileTile(title: "Who can reach you"),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: whoCanReachYouList.length,
                itemBuilder: (context, index) {
                  return TextAndArrow(text: whoCanReachYouList[index]);
                }),
            CustomDivider(
              thick: 16.0,
            ),
            TitileTile(title: "Messaging experience"),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: messagingExpirienceList.length,
                itemBuilder: (context, index) {
                  return TextAndArrow(text: messagingExpirienceList[index]);
                }),
            CustomDivider(
              thick: 16.0,
            ),
            TitileTile(title: "Job seeking preferences"),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: jobSeekingPreferences.length,
                itemBuilder: (context, index) {
                  return TextAndArrow(text: jobSeekingPreferences[index]);
                }),
            CustomDivider(
              thick: 16.0,
            ),
            TitileTile(title: "Other applications"),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: otherApplicatonsList.length,
                itemBuilder: (context, index) {
                  return TextAndArrow(text: otherApplicatonsList[index]);
                }),
          ],
        ),
      ),
    );
  }
}
