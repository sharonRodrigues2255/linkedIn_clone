import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';

List _pages = ["People", "Pages", "Events"];
int selectedindex = 0;

class SentScreen extends StatefulWidget {
  const SentScreen({
    super.key,
  });

  @override
  State<SentScreen> createState() => _SentScreenState();
}

class _SentScreenState extends State<SentScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48,
          width: double.infinity,
          child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedindex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: index == selectedindex ? tabColor : kwhite,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black54)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 2),
                          child: Text(
                            _pages[index],
                            style: TextStyle(
                                color: index == selectedindex
                                    ? kwhite
                                    : Colors.black54),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
        Expanded(
          child: selectedindex == 0
              ? Container(
                  child: ListView.builder(
                      itemCount: Profile.invitations.length,
                      itemBuilder: (context, index) {
                        final data = Profile.invitations[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(data["picture"]),
                            ),
                            title: Text(data["name"],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14)),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data["headline"],
                                ),
                                Text(
                                  "sent ${data["sent"]}",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            trailing: Text('Withdraw'),
                          ),
                        );
                      }),
                )
              : selectedindex == 1
                  ? Container(
                      color: Colors.red,
                    )
                  : Container(
                      color: Colors.blue,
                    ),
        )
      ],
    );
  }
}
