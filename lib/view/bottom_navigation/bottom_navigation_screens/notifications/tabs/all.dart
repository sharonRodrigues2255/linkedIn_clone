import 'package:flutter/material.dart';

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
