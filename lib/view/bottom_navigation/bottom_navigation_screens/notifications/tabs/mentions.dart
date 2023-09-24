import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/images/image_constants.dart';

class Mentions extends StatefulWidget {
  const Mentions({super.key});

  @override
  State<Mentions> createState() => _MentionsState();
}

class _MentionsState extends State<Mentions> {
  @override
  void initState() {
    isloading = true;
    checkloading();
    super.initState();
  }

  late bool isloading;
  Future checkloading() async {
    Future.delayed(Duration(seconds: 1)).then((value) {
      setState(() {
        isloading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isloading
          ? CircularProgressIndicator()
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 200,
                      width: 200,
                      child: Image(image: AssetImage(ImageConstants.notifbg))),
                  Text(
                    "No new Mentions",
                    style: myfontNormal(size: 20.0, weight: FontWeight.w300),
                  ),
                  height20,
                  Text(
                    "When someone tags you in a post or comment ,that notification will appear here.",
                    style: TextStyle(color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
    );
  }
}
