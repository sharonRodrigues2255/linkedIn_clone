import 'package:flutter/material.dart';
import 'package:linkedin_clone/view/profile_page/widgets/app_bar.dart';

class OtherProfiles extends StatelessWidget {
  const OtherProfiles({super.key, required this.userName});

  final String userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ProfileAppBarWidget(actions: SizedBox(), title: Text(userName)));
  }
}
