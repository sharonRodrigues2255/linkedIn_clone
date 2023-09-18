import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/view/profile_page/widgets/curve_rectangle.dart';

class ProfileGrid extends StatelessWidget {
  const ProfileGrid({
    super.key,
    required this.mediaWidth,
  });

  final double mediaWidth;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
            color: kwhite, borderRadius: BorderRadius.circular(10)),
        width: 100,
        height: 210,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              child: Stack(
                children: [
                  Container(
                    height: 75,
                    decoration: BoxDecoration(
                        color: kblue, borderRadius: BorderRadius.circular(10)),
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
                      radius: 55,
                      backgroundColor: Colors.amber,
                    ),
                  )
                ],
              ),
            ),
            Text(
              "Name",
              style: myfontNormal(),
            ),
            Text("Headline"),
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
            height20,
            CurveRectangle(
              mediaWidth: mediaWidth,
              title: "Connect",
              color: kblue,
            )
          ],
        ),
      ),
    );
  }
}
