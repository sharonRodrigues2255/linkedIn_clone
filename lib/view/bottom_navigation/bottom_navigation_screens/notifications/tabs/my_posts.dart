import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/images/image_constants.dart';
import 'package:linkedin_clone/view/profile_page/widgets/curve_rectangle.dart';

class MyPost extends StatefulWidget {
  const MyPost({super.key});

  @override
  State<MyPost> createState() => _MyPostState();
}

class _MyPostState extends State<MyPost> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isloading = true;
    loadingcheck();
  }

  late bool isloading;
  Future<void> loadingcheck() async {
    Future.delayed(Duration(seconds: 1)).then((value) {
      setState(() {
        isloading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isloading
        ? Center(child: CircularProgressIndicator())
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 200,
                    width: 200,
                    child: Image(image: AssetImage(ImageConstants.notifbg))),
                Text(
                  "No new Post activities",
                  style: myfontNormal(size: 20.0, weight: FontWeight.w300),
                ),
                height20,
                Text(
                  "View previous post activities on your profile",
                  style: TextStyle(color: Colors.black54),
                ),
                height20,
                CurveRectangle(
                  mediaWidth: MediaQuery.sizeOf(context).width + 100,
                  title: "View Previous activity",
                  color: kblue,
                )
              ],
            ),
          );
  }
}
