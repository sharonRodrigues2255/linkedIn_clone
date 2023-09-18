import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/view/profile_page/widgets/following_rectangle.dart';
import 'package:linkedin_clone/view/profile_page/widgets/show_all_widget.dart';

class Companies extends StatelessWidget {
  const Companies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 35,
                          child: ClipOval(
                            child: Image(
                                image: AssetImage(
                                    Profile.companies[index]["picture"])),
                          ),
                        ),
                        title: Row(
                          children: [
                            Text(
                              Profile.companies[index]["name"],
                              style: myfont(size: 17.0),
                            ),
                            width10,
                          ],
                        ),
                        subtitle: Text(
                            "${Profile.interests[index]["followers"]} followers"),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                          ),
                          FollowingRectangle(
                              title: Row(
                            children: [
                              Icon(Icons.done),
                              Text(
                                "Following",
                                style: myfont(size: 14.0),
                              ),
                            ],
                          )),
                        ],
                      ),
                      Divider()
                    ],
                  )),
        ),
        ShowAllWidget(title: "Show all Top Companies")
      ],
    );
  }
}
