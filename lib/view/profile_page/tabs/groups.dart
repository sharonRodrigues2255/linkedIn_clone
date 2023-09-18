import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/view/profile_page/widgets/following_rectangle.dart';
import 'package:linkedin_clone/view/profile_page/widgets/show_all_widget.dart';

class Groups extends StatelessWidget {
  const Groups({
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
                          child: Image(
                              image:
                                  AssetImage(Profile.groups[index]["picture"])),
                        ),
                        title: Row(
                          children: [
                            Text(
                              Profile.groups[index]["name"],
                              style: myfont(size: 17.0),
                            ),
                            width10,
                          ],
                        ),
                        subtitle:
                            Text("${Profile.groups[index]["members"]} members"),
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
                                "Joined",
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
        ShowAllWidget(title: "Show all groups")
      ],
    );
  }
}
