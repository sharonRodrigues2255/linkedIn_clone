import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/custom_divider.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/profile_grid.dart';

class GridList extends StatelessWidget {
  const GridList({super.key, required this.mediaWidth, required this.count});

  final double mediaWidth;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              "People you may know from Java Developers Community (moderated)"),
        ),
        GridView.builder(
            padding: EdgeInsets.all(8),
            itemCount: count,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1 / 1.56,
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8),
            itemBuilder: (context, index) {
              return ProfileGrid(
                mediaWidth: mediaWidth,
                index: index,
              );
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
    );
  }
}
