import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/view/profile_page/widgets/curve_rectangle.dart';

class ProfileRectangleView extends StatelessWidget {
  const ProfileRectangleView({
    super.key,
    required this.mediaWidth,
  });

  final double mediaWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 3,
        child: Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 170,
                child: Stack(
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                    ),
                    Positioned(
                      top: 45,
                      left: 20,
                      child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.pinkAccent,
                          backgroundImage:
                              AssetImage(Profile.connection[0]["picture"])),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.black.withOpacity(.5),
                          child: Icon(
                            Icons.close,
                            color: kwhite,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 15,
                      top: 120,
                      child: CurveRectangle(
                        mediaWidth: mediaWidth * .5,
                        title: "Follow",
                        color: kblue,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      Profile.connection[0]["name"],
                      style: myfont(size: 16.0),
                    ),
                    Text(Profile.connection[0]["headline"]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
