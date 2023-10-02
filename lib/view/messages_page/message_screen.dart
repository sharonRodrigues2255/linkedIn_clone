import 'package:flutter/material.dart';
import 'package:linkedin_clone/db/message_db/message_db.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(messagesData[index]["name"]),
        actions: [
          Icon(Icons.more_vert),
          width10,
          Icon(Icons.video_call),
          width10,
          Icon(Icons.star_border),
          width10
        ],
      ),
      body: ListView(
        reverse: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(messagesData[index]["picture"]),
                  radius: 30,
                ),
                height10,
                Text(
                  messagesData[index]["name"],
                  style: myfontNormal(weight: FontWeight.bold),
                ),
                Text(
                  messagesData[index]["headline"],
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: messagesData[index]["messages"].length,
                    itemBuilder: (context, i) {
                      final List<Map<String, dynamic>> data =
                          messagesData[index]["messages"];
                      final msg = data[i]["message"];
                      final time = data[i]["time"];
                      final month = time.month;
                      final date = time.day;

                      String funMonth(int month) {
                        switch (month) {
                          case 1:
                            return "Jan";
                          case 2:
                            return "Feb";
                          case 3:
                            return "Mar";
                          case 4:
                            return "Apr";
                          case 5:
                            return "May";
                          case 6:
                            return "Jun";
                          case 7:
                            return "Jul";
                          case 8:
                            return "Aug";
                          case 9:
                            return "Sep";
                          case 10:
                            return "Oct";
                          case 11:
                            return "Nov";
                          case 12:
                            return "Dec";
                          default:
                            return "Unknown";
                        }
                      }

                      return Column(
                        children: [
                          i > 0 &&
                                  data[i]["time"].month ==
                                      data[i - 1]["time"].month &&
                                  data[i]["time"].day == data[i - 1]["time"].day
                              ? SizedBox()
                              : Row(
                                  children: [
                                    Expanded(child: Divider()),
                                    Text('${funMonth(month)} $date '),
                                    Expanded(child: Divider()),
                                  ],
                                ),
                          Row(
                            children: [
                              if (data[i]["type"] == "r")
                                Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              messagesData[index]["picture"])),
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              else
                                Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              Profile.profilePicture)),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              width10,
                              Column(
                                children: [
                                  Text(msg),
                                ],
                              ),
                            ],
                          ),
                          height10,
                        ],
                      );
                    }),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
