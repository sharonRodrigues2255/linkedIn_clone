import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';

class ManageMyNetwork extends StatelessWidget {
  const ManageMyNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage my network"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Divider(),
            ManageNetworkItems(
              icon: Icons.people,
              title: "Connections",
              count: Profile.connections,
            ),
            ManageNetworkItems(
                icon: Icons.person_pin_circle_outlined,
                title: "People i follow",
                count: Profile.peopleIFollow),
            ManageNetworkItems(
                icon: Icons.groups,
                title: "Groups",
                count: Profile.numberOfGroups),
            ManageNetworkItems(
                icon: Icons.contact_page_outlined,
                title: "Pages",
                count: Profile.pages),
            ManageNetworkItems(
                icon: Icons.newspaper_outlined,
                title: "Newsletters",
                count: Profile.newsletters)
          ],
        ),
      ),
    );
  }
}

class ManageNetworkItems extends StatelessWidget {
  const ManageNetworkItems(
      {super.key,
      required this.icon,
      required this.title,
      required this.count});
  final IconData icon;
  final String title;
  final String count;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon),
            width20,
            Text(
              title,
              style: myfontNormal(),
            ),
            Spacer(),
            Text(count)
          ],
        ),
        height10,
        Divider()
      ],
    );
  }
}
