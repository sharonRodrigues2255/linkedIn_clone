import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';

class OpenToWorkCard extends StatelessWidget {
  const OpenToWorkCard({
    super.key,
    this.headline = "Flutter developer",
    this.ownprofile = true,
  });
  final String headline;
  final ownprofile;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 179, 229, 252),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Open to work",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              ownprofile
                  ? Icon(
                      Icons.edit_outlined,
                      size: 20,
                    )
                  : SizedBox()
            ],
          ),
          Text("${headline} roles"),
          Text(
            "Show details",
            style: TextStyle(color: kblue),
          )
        ],
      ),
    );
  }
}
