import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';

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
            ListView.builder(
                itemCount: Profile.groups.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        color: kblack,
                      ),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: Profile.groups.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        color: kblack,
                      ),
                    ),
                  );
                })
          ])),
    );
  }
}
