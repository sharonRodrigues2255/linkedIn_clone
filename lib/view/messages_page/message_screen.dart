import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        actions: [
          Icon(Icons.more_vert),
          width10,
          Icon(Icons.video_call),
          width10,
          Icon(Icons.star_border),
          width10
        ],
      ),
    );
  }
}
