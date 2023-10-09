import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/db/posts_db/posts_db.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/home/screens/comments_screen.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/home/widgets/named_icon.dart';
import 'package:linkedin_clone/view/other_profiles/other_profiles_screen.dart';

class PostWidget1 extends StatefulWidget {
  const PostWidget1({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<PostWidget1> createState() => _PostWidget1State();
}

class _PostWidget1State extends State<PostWidget1> {
  @override
  Widget build(BuildContext context) {
    Color likeColor = kwhite;

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
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return OtherProfiles(profileData: posts[widget.index]);
                      }));
                    },
                    child: Text(
                      posts[widget.index]["name"],
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15.0),
                    ),
                  ),
                  Text(
                    posts[widget.index]["designation"],
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    posts[widget.index]["timeAgo"],
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
        height10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            posts[widget.index]["description"],
            style: TextStyle(fontSize: 13),
          ),
        ),
        height10,
        SizedBox(
            child: Image(
                fit: BoxFit.fitWidth,
                width: double.infinity,
                image: posts[widget.index]["image"])),
        height10,
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
                        color: likeColor,
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
              "${posts[widget.index]["likes"]}",
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
        height10,
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  posts[widget.index]["isliked"] =
                      !posts[widget.index]["isliked"];
                  if (posts[widget.index]["isliked"]) {
                    posts[widget.index]["likes"] += 1;
                  } else {
                    posts[widget.index]["likes"] -= 1;
                  }
                  print(posts[widget.index]["isliked"]);
                });
              },
              child: NamedIcon(
                icon: posts[widget.index]["isliked"] == true
                    ? Icon(
                        Icons.thumb_up_sharp,
                        size: 18,
                        color: kblue,
                      )
                    : Icon(
                        Icons.thumb_up_outlined,
                        size: 18,
                        color: kblack,
                      ),
                label: "Like",
              ),
            ),
            NamedIcon(
                icon: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => CommentScreen(
                              index: widget.index,
                            ))));
                  },
                  child: Icon(
                    Icons.comment,
                    size: 18,
                  ),
                ),
                label: "comment"),
            NamedIcon(
                icon: Icon(
                  Icons.cached_outlined,
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
