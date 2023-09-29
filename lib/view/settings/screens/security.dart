import 'package:flutter/material.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/text_and_arrow.dart';
import 'package:linkedin_clone/view/profile_page/widgets/title_tile_widget.dart';

class SignInAndSecurity extends StatelessWidget {
  const SignInAndSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign in & security")),
      body: Column(
        children: [
          Divider(),
          TitileTile(title: "Account access"),
          TextAndArrow(text: "Phone numbers"),
          TextAndArrow(text: "Change passwords"),
          TextAndArrow(text: "Where you're signed in"),
          TextAndArrow(text: "Devices that remember your password"),
          TextAndArrow(text: "Two step verification"),
          TextAndArrow(text: "App lock"),
        ],
      ),
    );
  }
}
