import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/db/posts_db/posts_db.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/home/widgets/post_widget1.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostWidget1(
            index: index,
          );
        },
        separatorBuilder: (context, index) => Divider(
          thickness: 8,
          color: dividerColor,
        ),
      ),
    ));
  }
}
