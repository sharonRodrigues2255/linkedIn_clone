import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/custom_divider.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/profile_grid.dart';
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
          TextAndArrow(
            text: "Manage my network",
          ),
          CustomDivider(),
          TextAndArrow(text: "Invitations (0)"),
          CustomDivider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                "People you may know from Java Developers Community (moderated)"),
          ),
          GridView.builder(
              padding: EdgeInsets.all(8),
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 1.56,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8),
              itemBuilder: (context, index) {
                return ProfileGrid(mediaWidth: mediaWidth);
              }),
          height10,
          Text(
            "See all",
            style: myfontNormal(
              color: kblue,
            ),
          ),
          height10,
          CustomDivider()
        ],
      ),
    ));
  }
}
