import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';

class OpenToWorkCard extends StatelessWidget {
  const OpenToWorkCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 179, 229, 252),
          borderRadius: BorderRadius.circular(8)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Open to work",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.edit_outlined,
                size: 20,
              )
            ],
          ),
          Text("Flutter developer roles"),
          Text(
            "Show details",
            style: TextStyle(color: kblue),
          )
        ],
      ),
    );
  }
}
