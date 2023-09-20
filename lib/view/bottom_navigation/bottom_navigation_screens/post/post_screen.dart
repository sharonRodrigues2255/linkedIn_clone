import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.close,
          size: 30,
          weight: .1,
        ),
        title: Row(children: [
          CircleAvatar(
            radius: 15,
            child: ClipOval(
              child: Image(image: NetworkImage(Profile.profilePicture)),
            ),
          ),
          width10,
          Text(
            "Anyone",
            style: myfontNormal(size: 16.0),
          ),
          Icon(Icons.arrow_drop_down)
        ]),
        actions: [
          Icon(Icons.schedule),
          width10,
          Container(
            height: 35,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                "Post",
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
            ),
          ),
          width10
        ],
      ),
      body: TextFormField(
        expands: false,
        maxLines: 20000,
        minLines: 1,
        decoration: InputDecoration(
          hintText: "Start typing or Draft with AI",
          suffixIcon: Icon(Icons.edit),
          hintStyle: TextStyle(color: Colors.black45, fontSize: 22),
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.photo_size_select_actual_outlined,
            ),
            Icon(
              Icons.pie_chart_outline_rounded,
            ),
            Icon(
              Icons.date_range_outlined,
            ),
            Icon(
              Icons.more_horiz,
            ),
            width20,
            width20,
            width10,
          ],
        ),
      ),
    );
  }
}
