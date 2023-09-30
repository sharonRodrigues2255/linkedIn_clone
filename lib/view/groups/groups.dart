import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/utils/images/image_constants.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/profile_grid.dart';
import 'package:linkedin_clone/view/groups/groups_db/more_groups_bd.dart';
import 'package:linkedin_clone/view/groups/widgets/group_grid.dart';
import 'package:linkedin_clone/view/profile_page/widgets/curve_rectangle.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text("Groups"),
            actions: [Text("Create"), width10],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Row(
                children: [
                  Container(
                    width: 313,
                    height: 40,
                    child: const TabBar.secondary(tabs: [
                      Text(
                        "Your groups",
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        "Requested",
                        style: TextStyle(fontSize: 13),
                      ),
                      Text(
                        "Discover",
                        style: TextStyle(fontSize: 13),
                      )
                    ]),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(children: [
            ListView.builder(
                itemCount: Profile.groups.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    Profile.groups[index]["picture"]))),
                      ),
                      title: Text(Profile.groups[index]["name"]),
                      subtitle: Text(Profile.groups[index]["members"]),
                      trailing: Icon(Icons.more_vert),
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 200,
                      width: 200,
                      child: Image(image: AssetImage(ImageConstants.notifbg))),
                  Text(
                    "Discover groups",
                    style: myfontNormal(size: 20.0, weight: FontWeight.bold),
                  ),
                  height20,
                  Text(
                    "Discover trusted groups that share and support your goals.",
                    style: TextStyle(color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                  height20,
                  CurveRectangle(
                    mediaWidth: 250,
                    title: "Discover",
                    color: kblue,
                  )
                ],
              ),
            ),
            GridView.builder(
                padding: EdgeInsets.all(8),
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1 / 1.56,
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8),
                itemBuilder: (context, index) {
                  return GroupGrid(
                      members: moreGroups[index]["members"],
                      name: moreGroups[index]["name"]);
                }),
          ])),
    );
  }
}
