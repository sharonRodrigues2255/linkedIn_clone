import 'package:flutter/material.dart';
import 'package:linkedin_clone/db/my_network_db/my_network_db.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/view/other_profiles/other_profiles_screen.dart';
import 'package:linkedin_clone/view/profile_page/widgets/curve_rectangle.dart';

class ProfileGrid extends StatelessWidget {
  const ProfileGrid({super.key, required this.mediaWidth, required this.index});

  final int index;
  final double mediaWidth;

  @override
  Widget build(BuildContext context) {
    int ind = index;
    ind = ind % 4;
    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
            color: kwhite, borderRadius: BorderRadius.circular(10)),
        width: 100,
        height: 210,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 150,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 75,
                    child: Text(
                      myNetwork[ind]["designation"],
                      style: myfont(size: 14.0, color: kwhite),
                    ),
                    decoration: BoxDecoration(
                        color: kblack, borderRadius: BorderRadius.circular(10)),
                  ),
                  Align(
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
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(myNetwork[ind]["picture"]),
                      radius: 55,
                      backgroundColor: Colors.amber,
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        OtherProfiles(profileData: myNetwork[ind])));
              },
              child: Text(
                myNetwork[ind]["name"],
                style: myfontNormal(),
              ),
            ),
            Text(myNetwork[ind]["designation"]),
            height10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.link),
                width10,
                Text(
                  "23 mutual connection",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            height10,
            CurveRectangle(
              mediaWidth: mediaWidth,
              title: "Connect",
              color: kblue,
            ),
            height10,
          ],
        ),
      ),
    );
  }
}
