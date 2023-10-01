import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/home/posts_db/posts_db.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/home/widgets/post_widget1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key, required this.index});
  final int index;

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    final post = posts[widget.index];
    TextEditingController textEditingController = TextEditingController();
    FocusNode textFocus = FocusNode();

    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.more_vert), width10],
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              textFocus.unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PostWidget1(index: widget.index),
                  height10,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Comments"),
                  ),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: post["comments"].length,
                      itemBuilder: (context, i) {
                        print(post["comments"]);
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              height10,
                              CircleAvatar(
                                radius: 22,
                                backgroundImage: post["comments"][i]["image"],
                              ),
                              width10,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width - 90,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 180, 189, 192),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                post["comments"][i]["name"],
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Icon(Icons.more_vert)
                                            ],
                                          ),
                                          Text(post["comments"][i]["comment"])
                                        ],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      width10,
                                      Text("Like"),
                                      width10,
                                      FaIcon(
                                        FontAwesomeIcons.circleDot,
                                        size: 5,
                                        color: kblack,
                                      ),
                                      width10,
                                      CircleAvatar(
                                        radius: 8,
                                        child: CircleAvatar(
                                          radius: 6.5,
                                          backgroundColor: Colors.blue,
                                          child: Icon(
                                            Icons.thumb_up_sharp,
                                            color: kwhite,
                                            size: 8,
                                          ),
                                        ),
                                      ),
                                      width10,
                                      Text("|  Reply"),
                                      width10,
                                      FaIcon(
                                        FontAwesomeIcons.circleDot,
                                        size: 5,
                                        color: kblack,
                                      ),
                                      width10,
                                      Text("reply")
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: kwhite,
              height: 50,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(Profile.profilePicture),
                    ),
                    width10,
                    Expanded(
                      child: TextFormField(
                        focusNode: textFocus,
                        controller: textEditingController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(5),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: 'Leave your thoughts here ...',
                            suffixIcon: Icon(Icons.alternate_email)),
                      ),
                    ),
                    width20,
                    InkWell(
                      onTap: () {
                        String text = textEditingController.text;
                        if (text.trim().isNotEmpty) {
                          Map<String, dynamic> commentDetails = {
                            "image": NetworkImage(Profile.profilePicture),
                            "name": Profile.userName,
                            "comment": text
                          };
                          posts[widget.index]["comments"].add(commentDetails);
                          print(posts[widget.index]["comments"]);
                          textFocus.unfocus();
                          textEditingController.text = "";
                          setState(() {});
                        }
                      },
                      child: Text("Post"),
                    ),
                    width20
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
