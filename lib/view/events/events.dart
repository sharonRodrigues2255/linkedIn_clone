import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/db/event_db/event_db.dart';
import 'package:linkedin_clone/view/events/widgets/event_tile.dart';
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
                    final event = eventsList[index];
                    return EventTileWidget(
                      date: event["date"],
                      eventName: event["eventName"],
                      hostName: event["hostName"],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
