import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/images/image_constants.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/jobs/jobs_database/job_functions.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/jobs/widgets/joblistbuilder.dart';
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
          JoblistBuilder(
            joblist: recomendedJobs,
          ),
          ShowAllWidget(title: "Show all"),
          CustomDivider(),
          TitileTile(title: "Hybrid jobs"),
          JoblistBuilder(joblist: hybridJobs),
          ShowAllWidget(title: "Show all"),
          CustomDivider(),
          TitileTile(title: "Remote Jobs"),
          JoblistBuilder(joblist: remoteJobs),
          ShowAllWidget(title: "Show all"),
          CustomDivider(),
          TitileTile(title: "More Jobs"),
          JoblistBuilder(
            joblist: moreJobs,
            length: 10,
          ),
          ShowAllWidget(title: "Show all"),
          CustomDivider(),
          TitileTile(title: "Recomended for you"),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 200,
                    width: 200,
                    child: Image(image: AssetImage(ImageConstants.notifbg))),
                Text(
                  "Want more jobs?",
                  style: myfontNormal(size: 20.0, weight: FontWeight.w300),
                ),
                height10,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "SEarch for jobs and we'll serve recommendations that match your criteria",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                height20,
                Text(
                  "Search jobs",
                  style:
                      myfont(color: kblue, size: 16.0, weight: FontWeight.bold),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
