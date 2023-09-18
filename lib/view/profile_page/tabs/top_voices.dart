import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/utils/images/image_constants.dart';
import 'package:linkedin_clone/view/profile_page/widgets/following_rectangle.dart';
import 'package:linkedin_clone/view/profile_page/widgets/show_all_widget.dart';

class TopVoices extends StatelessWidget {
  const TopVoices({
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
                                    Profile.interests[index]["picture"])),
                          ),
                        ),
                        title: Row(
                          children: [
                            Text(
                              Profile.interests[index]["name"],
                              style: myfont(size: 17.0),
                            ),
                            width10,
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ImageConstants.linkedIn_logo))),
                            )
                          ],
                        ),
                        subtitle: Text(Profile.interests[index]["headline"]),
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
        ShowAllWidget(title: "Show all Top Voices")
      ],
    );
  }
}
