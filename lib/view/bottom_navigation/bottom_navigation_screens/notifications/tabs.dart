import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/images/image_constants.dart';

class All extends StatelessWidget {
  const All({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(
          radius: 30,
        ),
      );
    });
  }
}

class MyPost extends StatelessWidget {
  const MyPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(image: AssetImage(ImageConstants.notifbg)),
    );
  }
}

class Mentions extends StatelessWidget {
  const Mentions({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(image: AssetImage(ImageConstants.notifbg)),
    );
  }
}
