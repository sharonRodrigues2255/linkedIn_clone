import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';

class ProfileResoursesitem extends StatelessWidget {
  const ProfileResoursesitem(
      {super.key,
      this.onIcon = false,
      required this.icon,
      required this.title,
      required this.subtitle});

  final IconData icon;
  final String title;
  final String subtitle;
  final bool onIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 30,
                color: Colors.black54,
              ),
              width10,
              Text(
                title,
                style: myfont(size: 17.0),
              ),
              width10,
              Container(
                height: 20,
                width: 25,
                color: onIcon ? Colors.brown : kwhite,
                child: Center(
                  child: onIcon
                      ? Text(
                          "On",
                          style: TextStyle(color: kwhite),
                        )
                      : null,
                ),
              )
            ],
          ),
          Row(
            children: [
              width20,
              width10,
              width10,
              Expanded(
                child: Wrap(
                  children: [
                    Text(
                      subtitle,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
