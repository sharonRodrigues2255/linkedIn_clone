import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/view/profile_page/widgets/app_bar.dart';
import 'package:linkedin_clone/view/profile_page/widgets/following_rectangle.dart';
import 'package:linkedin_clone/view/profile_page/widgets/open_to_work_card.dart';

class OtherProfiles extends StatelessWidget {
  const OtherProfiles(
      {super.key, required this.profileData, this.fromMyNetwork = false});

  final Map<String, dynamic> profileData;
  final bool fromMyNetwork;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: ProfileAppBarWidget(
            actions: SizedBox(),
            title: Text(
              profileData["name"],
              style: TextStyle(fontSize: 18),
            )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 175,
            child: Stack(
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: kblack,
                  ),
                  child: Center(
                      child: Text(
                    profileData["designation"],
                    style: myfont(color: kwhite),
                  )),
                ),
                Positioned(
                  left: 10,
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 70,
                    child: CircleAvatar(
                      radius: 68,
                      child: ClipOval(
                        child: Image(
                            height: 136,
                            width: 136,
                            image: AssetImage(profileData["picture"])),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profileData["name"],
                    style: myfont(size: 22.0),
                  ),
                  Text(profileData["designation"]),
                  height10,
                  Text(profileData["college"]),
                  Text(
                    profileData["location"],
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                  ),
                  height20,
                  Row(
                    children: [
                      Text(
                        "${profileData["followers"]} followers",
                        style:
                            myfont(size: 14.0, color: kblue, weight: regular),
                      ),
                      width10,
                      Text(
                        "${profileData["connections"]} connections",
                        style:
                            myfont(size: 14.0, color: kblue, weight: regular),
                      ),
                    ],
                  ),
                  height20,
                  Row(
                    children: [
                      FollowingRectangle(
                          bgColor: Colors.lightBlue,
                          width: 140,
                          title: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: fromMyNetwork
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.send,
                                        size: 18,
                                      ),
                                      width10,
                                      Text("Message"),
                                    ],
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person_add_sharp,
                                        size: 18,
                                      ),
                                      width10,
                                      Text("Connect"),
                                    ],
                                  ),
                          )),
                      width10,
                      FollowingRectangle(
                          width: 140,
                          color: Colors.blue,
                          title: fromMyNetwork
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.access_time,
                                      color: kblue,
                                    ),
                                    width10,
                                    Text(
                                      "Pending",
                                      style: TextStyle(color: kblack),
                                    )
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.send,
                                      color: kblue,
                                    ),
                                    width10,
                                    Text(
                                      "Message",
                                      style: TextStyle(color: kblue),
                                    )
                                  ],
                                )),
                      width20,
                      CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          backgroundColor: kwhite,
                          radius: 15,
                          child: Icon(Icons.more_horiz),
                        ),
                      )
                    ],
                  ),
                  height20,
                  OpenToWorkCard(
                    ownprofile: false,
                    headline: profileData["services"],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
