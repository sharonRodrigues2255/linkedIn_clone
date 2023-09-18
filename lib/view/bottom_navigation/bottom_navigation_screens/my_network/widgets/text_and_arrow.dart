import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';

class TextAndArrow extends StatelessWidget {
  const TextAndArrow({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: myfontNormal(),
          ),
          Icon(
            Icons.arrow_forward,
            size: 18,
          )
        ],
      ),
    );
  }
}
