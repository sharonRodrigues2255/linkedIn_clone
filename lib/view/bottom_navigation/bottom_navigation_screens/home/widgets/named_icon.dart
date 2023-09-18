import 'package:flutter/material.dart';

class NamedIcon extends StatelessWidget {
  const NamedIcon({super.key, required this.icon, required this.label});

  final Widget icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.flip(
          flipX: true,
          child: icon,
        ),
        Text(label)
      ],
    );
  }
}
