import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/view/profile_page/profile_page.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                height20,
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileScreen()));
                    Scaffold.of(context).closeDrawer();
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: ClipOval(
                          child: Image(
                            height: 60,
                            width: 60,
                            image: NetworkImage(
                              Profile.profilePicture,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      height10,
                      Text(
                        Profile.userName,
                        style: myfont(),
                      ),
                      Text(
                        "View profile",
                      ),
                    ],
                  ),
                ),
                height20,
                Text(
                  "Analytics & tools",
                  style: myfont(size: 14.0),
                ),
                RichText(
                    text: TextSpan(
                        text: "25 ",
                        style: myfont(size: 14.0),
                        children: [
                      TextSpan(
                          text: "Profile viewers",
                          style: myfont(weight: FontWeight.w400, size: 14.0))
                    ])),
                height20,
                Divider(),
                height20,
                height10,
                Text(
                  "Groups",
                  style: myfont(),
                ),
                height20,
                height10,
                Text(
                  "Events",
                  style: myfont(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
