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
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: ProfileAppBarWidget(
              title: Text(
                "Search messages",
                style: TextStyle(color: darkgrey, fontSize: 18),
              ),
              actions: Row(
                children: [
                  InkWell(
                      onTap: () {
                        showbottomsheet(context);
                      },
                      child: Icon(
                        Icons.tune,
                      )),
                  width10,
                  InkWell(
                      onTap: () {
                        showbottomsheet2(context);
                      },
                      child: Icon(Icons.more_vert)),
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
                return InkWell(
                  child: ListTile(
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
                            image: AssetImage(
                                Profile.connection[index]["picture"])),
                      ),
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

List listMessageTuneIcon = [
  "Unread",
  "My connections",
  "InMail",
  "Archived",
  "Spam",
  "Starred",
  "Drafts"
];
showbottomsheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: listMessageTuneIcon.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(listMessageTuneIcon[index]),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: kblack,
                      child: CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.white,
                      ),
                    )
                  ],
                ),
              );
            });
      });
}

showbottomsheet2(BuildContext context) {
  showModalBottomSheet(
      context: (context),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.checklist_rounded),
                    width20,
                    Text("Manage chats")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.calendar_month),
                    width20,
                    Text("Set away message")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    width20,
                    Text("Manage Settings")
                  ],
                ),
              )
            ],
          ),
        );
      });
}
