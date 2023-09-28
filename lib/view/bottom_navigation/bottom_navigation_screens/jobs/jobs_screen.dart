import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/jobs/jobs_database/job_functions.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/custom_divider.dart';
import 'package:linkedin_clone/view/profile_page/widgets/show_all_widget.dart';
import 'package:linkedin_clone/view/profile_page/widgets/title_tile_widget.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({super.key});

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  @override
  Widget build(BuildContext context) {
    jObsTypes();
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_outline,
                    weight: 10,
                    color: kblack,
                  ),
                  label: Text(
                    "My jobs",
                    style: TextStyle(
                        fontSize: 16,
                        color: kblack,
                        fontWeight: FontWeight.w400),
                  )),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.edit_calendar_sharp,
                    color: kblack,
                  ),
                  label: Text(
                    "Post a free job",
                    style: TextStyle(
                        fontSize: 16,
                        color: kblack,
                        fontWeight: FontWeight.w400),
                  ))
            ],
          ),
          const CustomDivider(
            thick: 16.0,
          ),
          TitileTile(title: "Recomended jobs for you"),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              final job = recomendedJobs[index];
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
                            fontSize: 12,
                            color: Color.fromARGB(255, 52, 123, 55)),
                      )
                    ],
                  ),
                  Divider()
                ],
              );
            },
          ),
          ShowAllWidget(title: "Show all"),
          CustomDivider(),
        ],
      ),
    ));
  }
}
