import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/view/profile_page/profile_page.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    super.key,
    required this.mediaWidth,
  });

  final double mediaWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 175,
          child: Stack(
            children: [
              Container(
                height: 100,
                width: mediaWidth,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(Profile.backgroundImage))),
              ),
              Positioned(
                left: 10,
                bottom: 0,
                child: CircleAvatar(
                  radius: 70,
                  child: CircleAvatar(
                    radius: 68,
                    child: ClipOval(
                      child: Image(
                          height: 136,
                          width: 136,
                          image: Profile.profilePicture),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 12,
                left: 110,
                child: InkWell(
                  onTap: () {
                    showProfilebottomSheet(context);
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: kwhite,
                    child: CircleAvatar(
                      radius: 13,
                      backgroundColor: kblue,
                      child: Icon(
                        Icons.add,
                        color: kwhite,
                      ),
                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 20,
                right: 10,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: kwhite,
                  child: Icon(
                    Icons.edit_outlined,
                    color: kblack,
                    size: 20,
                  ),
                ),
              ),
              const Positioned(
                right: 10,
                bottom: 36,
                child: Icon(
                  Icons.edit_outlined,
                ),
              )
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Profile.userName,
                  style: myfont(size: 22.0),
                ),
                Text(Profile.headline),
                height10,
                Text(Profile.education["college"]!),
                Text(
                  "${Profile.location["country"]!},${Profile.location["state"]} ${Profile.location["city"]}",
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400),
                ),
                height20,
                Row(
                  children: [
                    Text(
                      "${Profile.followers} followers",
                      style: myfont(size: 14.0, color: kblue, weight: regular),
                    ),
                    width10,
                    Text(
                      "${Profile.connections} connections",
                      style: myfont(size: 14.0, color: kblue, weight: regular),
                    ),
                  ],
                ),
                height20,
              ],
            )),
      ],
    );
  }
}
