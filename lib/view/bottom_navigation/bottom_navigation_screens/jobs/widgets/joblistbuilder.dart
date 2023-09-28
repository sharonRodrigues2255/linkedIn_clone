import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';

class JoblistBuilder extends StatelessWidget {
  const JoblistBuilder({super.key, required this.joblist, this.length = 3});
  final joblist;
  final length;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: length,
      itemBuilder: (context, index) {
        final job = joblist[index];
        final companyName = job["companyName"];
        final jobtitle = job["jobTitle"];
        return Column(
          children: [
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                color: Colors.accents[index],
                child: Center(
                    child: Text(
                  companyName[index],
                  style: TextStyle(fontSize: 25),
                )),
              ),
              title: Text(jobtitle),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(companyName),
                  Text(
                    '${job["location"]} (${job["remoteStatus"]})',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              trailing: Icon(Icons.bookmark_outline),
            ),
            Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Transform.rotate(
                    angle: 125,
                    child: Icon(
                      Icons.send,
                      size: 20,
                    )),
                Text(
                  "Message the job poster directly",
                  style: TextStyle(fontSize: 12, color: kgrey),
                )
              ],
            ),
            height10,
            Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Text(
                  job["timePosted"],
                  style: TextStyle(
                      fontSize: 12, color: Color.fromARGB(255, 52, 123, 55)),
                )
              ],
            ),
            Divider()
          ],
        );
      },
    );
  }
}
