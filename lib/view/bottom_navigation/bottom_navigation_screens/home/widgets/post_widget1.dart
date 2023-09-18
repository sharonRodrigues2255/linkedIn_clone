import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/home/widgets/named_icon.dart';

class PostWidget1 extends StatelessWidget {
  const PostWidget1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Profile.companies[1]["picture"]))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Profile.companies[1]["name"],
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0),
                  ),
                  Text(
                    "${Profile.companies[1]["followers"]} followwers",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    "Promoted",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            TextButton.icon(
                onPressed: () {}, icon: Icon(Icons.add), label: Text("Follow")),
            width10,
          ],
        ),
        width10,
        Text(
          "Follow us for the best insights",
          style: TextStyle(fontSize: 13),
        ),
        SizedBox(
            child: Image(
                fit: BoxFit.fitWidth,
                width: double.infinity,
                image: AssetImage(Profile.companies[1]["picture"]))),
        Row(
          children: [
            width10,
            SizedBox(
              width: 45,
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 9,
                    backgroundColor: kwhite,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: kblue,
                      child: Icon(
                        Icons.thumb_up,
                        size: 9,
                        color: kwhite,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 11,
                    child: CircleAvatar(
                      radius: 9,
                      backgroundColor: kwhite,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: kred,
                        child: Icon(
                          Icons.favorite,
                          size: 9,
                          color: kwhite,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    child: CircleAvatar(
                      radius: 9,
                      backgroundColor: kwhite,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.amber,
                        child: Transform.flip(
                          flipY: true,
                          child: Icon(
                            Icons.wb_incandescent_rounded,
                            size: 10,
                            color: kwhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "100 likes",
              style: TextStyle(fontSize: 12),
            ),
            Spacer(),
            Text(
              "23 comments",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(
              width: 10,
              child: CircleAvatar(
                radius: 2,
                backgroundColor: kgrey,
              ),
            ),
            Text(
              "23 reposts",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NamedIcon(
              icon: Icon(
                Icons.thumb_up_alt_outlined,
                size: 18,
              ),
              label: "Like",
            ),
            NamedIcon(
                icon: Icon(
                  Icons.comment,
                  size: 18,
                ),
                label: "comment"),
            NamedIcon(
                icon: Icon(
                  Icons.compare_arrows_outlined,
                  size: 18,
                ),
                label: "Repost"),
            NamedIcon(
                icon: Transform.rotate(
                    angle: 35,
                    child: Icon(
                      Icons.send,
                      size: 18,
                    )),
                label: "Send")
          ],
        ),
      ],
    );
  }
}
