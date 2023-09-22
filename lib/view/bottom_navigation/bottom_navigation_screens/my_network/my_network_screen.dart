import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/custom_divider.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/gridlist.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/text_and_arrow.dart';
import 'package:linkedin_clone/view/profile_page/widgets/curve_rectangle.dart';

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
          const CustomDivider(),
          TextAndArrow(text: "Invitations (0)"),
          CustomDivider(),
          GridList(mediaWidth: mediaWidth),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              child: Container(
                height: 250,
                width: double.infinity,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 170,
                      child: Stack(
                        children: [
                          Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                          ),
                          Positioned(
                            top: 45,
                            left: 20,
                            child: CircleAvatar(
                                radius: 55,
                                backgroundColor: Colors.pinkAccent,
                                backgroundImage: AssetImage(
                                    Profile.connection[0]["picture"])),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.black.withOpacity(.5),
                                child: Icon(
                                  Icons.close,
                                  color: kwhite,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 15,
                            top: 120,
                            child: CurveRectangle(
                              mediaWidth: mediaWidth * .5,
                              title: "Follow",
                              color: kblue,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            Profile.connection[0]["name"],
                            style: myfont(size: 16.0),
                          ),
                          Text(Profile.connection[0]["headline"]),
                        ],
                      ),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}
