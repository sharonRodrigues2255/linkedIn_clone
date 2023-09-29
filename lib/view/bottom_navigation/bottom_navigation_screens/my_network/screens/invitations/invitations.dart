import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/screens/invitations/screens/recived.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/screens/invitations/screens/sent.dart';

class Invitations extends StatelessWidget {
  const Invitations({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: Text("Invitations"),
            actions: [
              Icon(
                Icons.settings,
                color: kblack,
              ),
              width20
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 180,
                      child: TabBar.secondary(
                          tabs: [Text("Recieved"), Text("Sent")])),
                ],
              ),
            )),
        body: TabBarView(children: [ReceivedScreen(), SentScreen()]),
      ),
    );
  }
}
