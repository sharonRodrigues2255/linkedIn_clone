import 'package:flutter/material.dart';

class ShowAllWidget extends StatelessWidget {
  const ShowAllWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text(title), Icon(Icons.arrow_right_alt_outlined)],
    );
  }
}
