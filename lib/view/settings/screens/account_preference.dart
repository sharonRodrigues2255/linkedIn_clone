import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/custom_divider.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/widgets/text_and_arrow.dart';
import 'package:linkedin_clone/view/profile_page/widgets/title_tile_widget.dart';
import 'package:linkedin_clone/view/settings/widgets/question_mark_icon.dart';

class AccountPreferences extends StatefulWidget {
  const AccountPreferences({super.key});

  @override
  State<AccountPreferences> createState() => _AccountPreferencesState();
}

class _AccountPreferencesState extends State<AccountPreferences> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isloading = true;
    checkloading();
  }

  late bool isloading;
  Future checkloading() async {
    Future.delayed(Duration(seconds: 1)).then((value) {
      setState(() {
        isloading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accounnt Preferences"),
        actions: [QuestionMarkIcon(), width10],
      ),
      body: isloading
          ? Center(child: CircularProgressIndicator())
          : const SingleChildScrollView(
              child: Column(
                children: [
                  Divider(),
                  TitileTile(title: "Profile Information"),
                  TextAndArrow(text: "Name, location, and industry"),
                  TextAndArrow(text: "Personal demographic information"),
                  TextAndArrow(text: "Verifications"),
                  CustomDivider(
                    thick: 16.0,
                  ),
                  TitileTile(title: "Display"),
                  TextAndArrow(text: "Dark mode"),
                  CustomDivider(
                    thick: 16.0,
                  ),
                  TitileTile(title: "General preferences"),
                  TextAndArrow(text: "Language"),
                  TextAndArrow(text: "Content language"),
                  TextAndArrow(text: "Autoplay Videos"),
                  TextAndArrow(text: "Sound effects"),
                  TextAndArrow(text: "Showing profile photos"),
                  TextAndArrow(text: "Feed preferences"),
                  TextAndArrow(text: "People who viewed"),
                  TextAndArrow(text: "People you unfollowed"),
                  TextAndArrow(text: "Open web links in app"),
                  CustomDivider(
                    thick: 16.0,
                  ),
                  TitileTile(title: "Syncing options"),
                  TextAndArrow(text: "Sync contacts"),
                  CustomDivider(
                    thick: 16.0,
                  ),
                  TitileTile(title: "Subscriptions & payments"),
                  TextAndArrow(text: "Upgrade for Free"),
                  TextAndArrow(text: "View purchase history"),
                  CustomDivider(
                    thick: 16.0,
                  ),
                  TitileTile(title: "Partners & services"),
                  TextAndArrow(text: "Microsoft"),
                  TextAndArrow(text: "Twiter settings"),
                  CustomDivider(
                    thick: 16.0,
                  ),
                  TitileTile(title: "Account management"),
                  TextAndArrow(text: "Hibernate account"),
                  TextAndArrow(text: "Close account")
                ],
              ),
            ),
    );
  }
}
