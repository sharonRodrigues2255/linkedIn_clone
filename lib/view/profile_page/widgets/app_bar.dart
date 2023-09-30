import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';

class ProfileAppBarWidget extends StatelessWidget {
  const ProfileAppBarWidget(
      {super.key, required this.actions, required this.title, this.bottom});
  final Widget actions;
  final Widget title;
  final PreferredSizeWidget? bottom;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SearchBarWidget(title: title),
      ),
      actions: [actions],
      bottom: bottom,
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.title,
  });

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromARGB(255, 242, 240, 240)),
      child: Row(
        children: [
          width10,
          Icon(
            Icons.search,
            size: 20,
            color: Colors.black,
          ),
          width10,
          title
        ],
      ),
    );
  }
}
