import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';

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
    return Expanded(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.yellow,
              height: MediaQuery.sizeOf(context).width / 5,
              width: MediaQuery.sizeOf(context).width / 2.5,
              child: Center(
                child: Text(
                  eventName[0],
                  style: myfont(size: 30.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(date),
                height10,
                Text(
                  eventName,
                  overflow: TextOverflow.ellipsis,
                  style: myfontNormal(weight: FontWeight.bold),
                ),
                height10,
                Text(hostName),
              ],
            ),
          )
        ],
      ),
    );
  }
}
