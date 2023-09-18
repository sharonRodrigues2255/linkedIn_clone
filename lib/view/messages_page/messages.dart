import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/view/profile_page/widgets/app_bar.dart';

class Messagees extends StatelessWidget {
  const Messagees({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: ProfileAppBarWidget(
              title: Text(
                "Search messages",
                style: TextStyle(color: darkgrey, fontSize: 18),
              ),
              actions: Row(
                children: [
                  Icon(Icons.tune),
                  width10,
                  Icon(Icons.more_vert),
                  width10
                ],
              ),
              bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: kblack,
                indicatorColor: kblack,
                tabs: [Text("Focused"), Text("Other")],
              ),
            )),
        body: TabBarView(children: [
          ListView.builder(
              itemCount: Profile.connection.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    Profile.connection[index]["name"],
                    style: TextStyle(fontSize: 14),
                  ),
                  subtitle: Text(
                    "hello",
                    style: TextStyle(fontSize: 12),
                  ),
                  leading: CircleAvatar(
                    radius: 25,
                    child: ClipOval(
                      child: Image(
                          image:
                              AssetImage(Profile.connection[index]["picture"])),
                    ),
                  ),
                );
              }),
          ListView.builder(
              itemCount: Profile.peopleIKnow.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    Profile.peopleIKnow[index]["name"],
                    style: TextStyle(fontSize: 14),
                  ),
                  subtitle: Text(
                    "hello",
                    style: TextStyle(fontSize: 12),
                  ),
                  leading: CircleAvatar(
                    radius: 25,
                    child: ClipOval(
                      child: Image(
                          image: AssetImage(
                              Profile.peopleIKnow[index]["picture"])),
                    ),
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
