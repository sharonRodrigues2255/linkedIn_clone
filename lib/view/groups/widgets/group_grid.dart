import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/view/profile_page/widgets/curve_rectangle.dart';

class GroupGrid extends StatelessWidget {
  const GroupGrid({super.key, required this.members, required this.name});

  final String name;
  final String members;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
            color: kwhite, borderRadius: BorderRadius.circular(10)),
        width: 100,
        height: 210,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 150,
              child: Stack(
                children: [
                  Container(
                    height: 75,
                    decoration: BoxDecoration(
                        color: kblack, borderRadius: BorderRadius.circular(10)),
                  ),
                  Align(
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 55,
                      width: 55,
                      child: Center(
                        child: Text(
                          name[0],
                          style: myfont(size: 22.0),
                        ),
                      ),
                      color: Colors.amber,
                    ),
                  )
                ],
              ),
            ),
            Text(
              name,
              style: myfontNormal(),
            ),
            Text("${members} members"),
            height10,
            height10,
            CurveRectangle(
              mediaWidth: 200,
              title: "Join",
              color: kblue,
            ),
            height10,
          ],
        ),
      ),
    );
  }
}
