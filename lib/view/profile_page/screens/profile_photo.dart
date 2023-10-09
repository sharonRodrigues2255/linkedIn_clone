import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close)),
        title: Text(
          "Profile Photo",
          style: myfont(),
        ),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundImage: Profile.profilePicture,
          radius: MediaQuery.of(context).size.width / 2.3,
        ),
      ),
    );
  }
}
