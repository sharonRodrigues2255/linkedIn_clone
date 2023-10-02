import 'package:flutter/material.dart';
import 'package:linkedin_clone/db/message_db/message_db.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key, required this.index});

  final int index;

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> data =
        messagesData[widget.index]["messages"];
    TextEditingController textEditingController = TextEditingController();
    bool textisempty = true;
    return Scaffold(
      appBar: AppBar(
        title: Text(messagesData[widget.index]["name"]),
        actions: [
          Icon(Icons.more_vert),
          width10,
          Icon(Icons.video_call),
          width10,
          Icon(Icons.star_border),
          width10
        ],
      ),
      body: Stack(
        children: [
          ListView(
            reverse: true,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage(messagesData[widget.index]["picture"]),
                      radius: 30,
                    ),
                    height10,
                    Text(
                      messagesData[widget.index]["name"],
                      style: myfontNormal(weight: FontWeight.bold),
                    ),
                    Text(
                      messagesData[widget.index]["headline"],
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount:
                            messagesData[widget.index]["messages"].length,
                        itemBuilder: (context, i) {
                          final name = messagesData[widget.index]["name"];
                          final List<Map<String, dynamic>> data =
                              messagesData[widget.index]["messages"];
                          final String type = data[i]["type"];

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
                                      data[i]["time"].day ==
                                          data[i - 1]["time"].day
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
                                    i > 0 &&
                                            data[i]["type"] ==
                                                data[i - 1]["type"] &&
                                            data[i]["time"].month ==
                                                data[i - 1]["time"].month &&
                                            data[i]["time"].day ==
                                                data[i - 1]["time"].day
                                        ? SizedBox(
                                            width: 36,
                                          )
                                        : Container(
                                            height: 36,
                                            width: 36,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        messagesData[
                                                                widget.index]
                                                            ["picture"])),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          )
                                  else
                                    i > 0 &&
                                            data[i]["type"] ==
                                                data[i - 1]["type"] &&
                                            data[i]["time"].month ==
                                                data[i - 1]["time"].month &&
                                            data[i]["time"].day ==
                                                data[i - 1]["time"].day
                                        ? SizedBox(
                                            width: 36,
                                          )
                                        : Container(
                                            height: 36,
                                            width: 36,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(Profile
                                                        .profilePicture)),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                  width10,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      i > 0 &&
                                              data[i]["type"] ==
                                                  data[i - 1]["type"] &&
                                              data[i]["time"].month ==
                                                  data[i - 1]["time"].month &&
                                              data[i]["time"].day ==
                                                  data[i - 1]["time"].day
                                          ? SizedBox()
                                          : Row(
                                              children: [
                                                Text(
                                                  type == "s"
                                                      ? Profile.userName
                                                      : name,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                width20,
                                                Text(
                                                  "${time.hour} ${time.minute} ",
                                                  style: myfontNormal(
                                                      size: 12.0,
                                                      weight: FontWeight.bold),
                                                )
                                              ],
                                            ),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: kwhite,
              height: 50,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.add,
                      color: kblue,
                      size: 25,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.sizeOf(context).width - 70,
                      child: TextFormField(
                        onChanged: (value) {
                          textEditingController.text.isNotEmpty
                              ? textisempty = false
                              : textisempty = true;
                        },
                        controller: textEditingController,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            filled: true,
                            fillColor: Colors.black12,
                            hintText: "Write a message...",
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          if (textEditingController.text.isNotEmpty) {
                            textEditingController.text;
                            final map = {
                              "type": "s",
                              "message": textEditingController.text,
                              "time": DateTime.now()
                            };
                            setState(() {
                              data.add(map);
                            });
                          }
                          ;
                        },
                        child: Icon(Icons.send))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
