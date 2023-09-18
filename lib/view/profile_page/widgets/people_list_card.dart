import 'package:flutter/material.dart';
import 'package:linkedin_clone/view/profile_page/widgets/following_rectangle.dart';
import 'package:linkedin_clone/view/profile_page/widgets/show_all_widget.dart';

class PeopleListCard extends StatelessWidget {
  const PeopleListCard(
      {super.key, required this.buttonName, required this.listName});

  final List<Map> listName;
  final Widget buttonName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: listName.length,
            itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 35,
                        child: ClipOval(
                          child: Image(
                              image: AssetImage(listName[index]["picture"])),
                        ),
                      ),
                      title: Text(listName[index]["name"]),
                      subtitle: Text(listName[index]["headline"]),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 90,
                        ),
                        FollowingRectangle(title: buttonName)
                      ],
                    ),
                    Divider()
                  ],
                )),
        ShowAllWidget(title: "Show all")
      ],
    );
  }
}
