import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/view/profile_page/tabs/companies.dart';
import 'package:linkedin_clone/view/profile_page/tabs/top_voices.dart';
import 'package:linkedin_clone/view/profile_page/tabs/groups.dart';
import 'package:linkedin_clone/view/profile_page/widgets/open_to_work_card.dart';
import 'package:linkedin_clone/view/profile_page/widgets/people_list_card.dart';
import 'package:linkedin_clone/view/profile_page/widgets/show_all_widget.dart';
import 'package:linkedin_clone/view/profile_page/widgets/app_bar.dart';
import 'package:linkedin_clone/view/profile_page/widgets/curve_rectangle.dart';
import 'package:linkedin_clone/view/profile_page/widgets/profile_card_widget.dart';
import 'package:linkedin_clone/view/profile_page/widgets/resourses_item.dart';
import 'package:linkedin_clone/view/profile_page/widgets/title_tile_widget.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: ProfileAppBarWidget(
              title: Text(
                Profile.userName,
                style:
                    myfont(weight: FontWeight.w400, color: kblack, size: 18.0),
              ),
              actions: Row(
                children: [
                  Icon(
                    Icons.settings_rounded,
                    size: 25,
                    color: Color.fromARGB(255, 107, 85, 85),
                  ),
                  width10
                ],
              ),
            )),
        body: ListView(
          children: [
            Divider(),
            Row(
              children: [
                width10,
                Text(
                  "Analytics & tools",
                  style: myfont(size: 14.0),
                ),
              ],
            ),
            Row(
              children: [
                width10,
                Text("Profile viewers"),
                Spacer(),
                Text(
                  "25",
                  style: myfont(size: 14.0, weight: regular),
                ),
                Icon(Icons.arrow_right_alt_rounded),
                width10,
              ],
            ),
            ProfileCardWidget(mediaWidth: mediaWidth),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 35,
                  width: mediaWidth * .40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: kblue,
                  ),
                  child: Center(
                      child: Text(
                    "Open to",
                    style: myfont(color: kwhite, weight: regular, size: 16.0),
                  )),
                ),
                CurveRectangle(
                  mediaWidth: mediaWidth,
                  title: "Add section",
                  color: kblue,
                ),
                Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all()),
                    child: Icon(
                      Icons.more_horiz_outlined,
                      size: 20,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: OpenToWorkCard(),
            ),
            const Divider(
              thickness: 8,
              color: Colors.black12,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitileTile(
                  title: "Resources",
                  subtile: Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Private to you"),
                    ],
                  ),
                ),
                height10,
                ProfileResoursesitem(
                  icon: Icons.campaign,
                  title: "Creator mode",
                  subtitle:
                      "Get discovered , showcase content on your profile , and get access to creator tools",
                  onIcon: true,
                ),
                Divider(),
                ProfileResoursesitem(
                  icon: Icons.people_outline_outlined,
                  title: "My network",
                  subtitle: "See and manage your connections and interests",
                ),
                height10,
                const Divider(),
                const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: ShowAllWidget(
                      title: "Show all 5 resourses",
                    ),
                  ),
                )
              ],
            ),
            Divider(
              thickness: 8,
              color: Colors.black12,
            ),
            Column(
              children: [
                TitileTile(
                  title: "Activity",
                  subtile: Text("${Profile.followers} followers"),
                  actions: [
                    CurveRectangle(
                      mediaWidth: mediaWidth,
                      title: "Create a post",
                      color: kblue,
                    ),
                    width10,
                    const Icon(
                      Icons.edit_outlined,
                      size: 22,
                    )
                  ],
                ),
                height10,
                const TitileTile(
                  title: "You haven't posted yet",
                  fontsize: 15.0,
                  subtile: Text("Posts you share will be displayed here."),
                ),
                const Divider(),
                const ShowAllWidget(title: "Show all activity"),
              ],
            ),
            Divider(
              thickness: 8,
              color: dividerColor,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TitileTile(
                  title: "Education",
                  actions: [
                    Icon(
                      Icons.add,
                      size: 25,
                    ),
                    width10,
                    const Icon(
                      Icons.edit_outlined,
                      size: 22,
                    ),
                    width10
                  ],
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                  ),
                  title: Text(
                    Profile.education["college"]!,
                    style: myfont(size: 16.0),
                  ),
                  subtitle: Text("June 2019 - july 2023"),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                  ),
                  title: Text(
                    Profile.education["school"]!,
                    style: myfont(size: 16.0),
                  ),
                  subtitle: Text("June 2017 - july 2019"),
                ),
              ],
            ),
            Divider(
              thickness: 8,
              color: dividerColor,
            ),
            Column(
              children: [
                TitileTile(
                  title: "Skills",
                  actions: [
                    CurveRectangle(
                      mediaWidth: mediaWidth,
                      title: "Take skill quiz",
                      color: kblue,
                    ),
                    width20,
                    Icon(
                      Icons.add,
                      size: 22,
                    ),
                    width20,
                    Icon(
                      Icons.edit,
                      size: 22,
                    ),
                    width10
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) => Text(
                      Profile.skills[index],
                      style: myfont(size: 15.0),
                    ),
                    separatorBuilder: (context, index) => Divider(),
                  ),
                ),
                Divider(),
                ShowAllWidget(title: "Show all ${Profile.skills.length} skills")
              ],
            ),
            Divider(
              thickness: 8,
              color: dividerColor,
            ),
            Column(
              children: [
                TitileTile(title: "Interests"),
                height10,
                Container(
                  width: double.infinity,
                  child: TabBar(
                    isScrollable: true,
                    padding: EdgeInsets.all(0),
                    tabs: [
                      Text("Top voices"),
                      Text("Companies"),
                      Text("Groups"),
                      Text("Newsletters")
                    ],
                    labelStyle: TextStyle(fontSize: 13),
                    unselectedLabelColor: Color.fromARGB(255, 127, 102, 102),
                    labelColor: Color.fromARGB(255, 127, 102, 102),
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                ),
                Container(
                  height: mediaHeight * .4,
                  width: mediaWidth,
                  child: TabBarView(children: [
                    TopVoices(),
                    Companies(),
                    Groups(),
                    Center(
                      child: Text("NewsLetters"),
                    )
                  ]),
                )
              ],
            ),
            Divider(
              thickness: 8,
              color: dividerColor,
            ),
            TitileTile(title: "People also viewed"),
            PeopleListCard(
              listName: Profile.connection,
              buttonName: Text("Message"),
            ),
            Divider(
              thickness: 8,
              color: dividerColor,
            ),
            TitileTile(title: "People you may know"),
            PeopleListCard(
                buttonName: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_add_alt_1,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Connect")
                  ],
                ),
                listName: Profile.peopleIKnow)
          ],
        ),
      ),
    );
  }
}
