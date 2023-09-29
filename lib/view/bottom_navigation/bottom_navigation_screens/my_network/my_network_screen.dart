import 'package:flutter/material.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/screens/invitations/invitations.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/screens/manage_your_network/manage_my_network.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/custom_divider.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/gridlist.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/profilerectangle.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/text_and_arrow.dart';

class MyNetworkScreen extends StatelessWidget {
  const MyNetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ManageMyNetwork()));
            },
            child: TextAndArrow(
              text: "Manage my network",
            ),
          ),
          const CustomDivider(),
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Invitations()));
              },
              child: TextAndArrow(text: "Invitations (0)")),
          CustomDivider(),
          GridList(
            mediaWidth: mediaWidth,
            count: 4,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return ProfileRectangleView(
                  mediaWidth: mediaWidth,
                  index: index,
                );
              }),
          GridList(
            mediaWidth: mediaWidth,
            count: 4,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return ProfileRectangleView(
                  mediaWidth: mediaWidth,
                  index: index,
                );
              }),
          GridList(mediaWidth: mediaWidth, count: 30)
        ],
      ),
    ));
  }
}
