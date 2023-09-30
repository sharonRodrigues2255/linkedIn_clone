import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/view/profile_page/widgets/app_bar.dart';
import 'package:linkedin_clone/view/profile_page/widgets/title_tile_widget.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events"),
        actions: [Text("Create"), width10],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBarWidget(
                title: Text("Search events"),
              ),
              TitileTile(
                title: "Your events",
                actions: [Text("Show all")],
              ),
              height20,
              TitileTile(title: "Top Audio Events"),
              ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return EventTileWidget();
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class EventTileWidget extends StatelessWidget {
  const EventTileWidget(
      {super.key,
      required this.date,
      required this.eventName,
      required this.hostName});
  final String date;
  final String eventName;
  final String hostName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: kred,
            height: MediaQuery.sizeOf(context).width / 4.5,
            width: MediaQuery.sizeOf(context).width / 2.5,
            child: Text(
              eventName[0],
              style: myfont(size: 25),
            ),
          ),
        ),
        Column(
          children: [
            Text(date),
            height10,
            Text(
              eventName,
              style: myfontNormal(weight: FontWeight.bold),
            ),
            height10,
            Text(hostName),
          ],
        )
      ],
    );
  }
}
