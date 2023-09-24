import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/view/messages_page/messages.dart';

class AppBarWidget extends StatefulWidget {
  final int index;
  const AppBarWidget({super.key, required this.index});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

List<String> tabs = [" All ", " My Post ", " Mentions "];

ValueNotifier<int> tabindexnotifier = ValueNotifier(0);

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        leading: Padding(
            padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
            child: InkWell(
              onTap: () {
                return Scaffold.of(context).openDrawer();
              },
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kblack,
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: NetworkImage(Profile.profilePicture))),
              ),
            )),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            height: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 242, 240, 240)),
            child: Row(
              children: [
                width10,
                Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.black,
                ),
                width10,
                Text(
                  "search",
                  style: myfont(weight: regular, color: kgrey, size: 18.0),
                )
              ],
            ),
          ),
        ),
        actions: widget.index == 4
            ? [Icon(Icons.more_vert), width20, AppBarMessageIcon(), width10]
            : [AppBarMessageIcon(), width10],
        toolbarHeight: 45,
        floating: true,
        pinned: widget.index == 1 ? true : false,
        bottom: widget.index == 3
            ? PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: Container(
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: InkWell(
                                  onTap: () {
                                    tabindexnotifier.value = index;
                                    print(tabindexnotifier.value);
                                    setState(() {});
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: index == tabindexnotifier.value
                                            ? const Color.fromARGB(
                                                255, 58, 92, 59)
                                            : kwhite,
                                        border: Border.all(color: kgrey),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(
                                          tabs[index],
                                          style: TextStyle(
                                              color: index ==
                                                      tabindexnotifier.value
                                                  ? kwhite
                                                  : Colors.black54,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              )
            : null);
  }
}

class AppBarMessageIcon extends StatelessWidget {
  const AppBarMessageIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Messagees()));
      },
      child: Stack(
        children: [
          Icon(
            Icons.chat_bubble_rounded,
            color: Colors.black54,
          ),
          Positioned(
            top: 9,
            left: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 1.5,
                  backgroundColor: kwhite,
                ),
                SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  radius: 1.5,
                  backgroundColor: kwhite,
                ),
                SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  radius: 1.5,
                  backgroundColor: kwhite,
                ),
                SizedBox(
                  width: 2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
