import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/utils/contants/profile_data.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/home/widgets/named_icon.dart';

class ProfilePhoto extends StatefulWidget {
  const ProfilePhoto({super.key});

  @override
  State<ProfilePhoto> createState() => _ProfilePhotoState();
}

class _ProfilePhotoState extends State<ProfilePhoto> {
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
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NamedIcon(icon: Icon(Icons.edit), label: "Edit"),
            InkWell(
                onTap: () {
                  showpropicBottomSheet(context);
                },
                child: NamedIcon(
                    icon: Icon(Icons.camera_alt), label: "Add photo")),
            NamedIcon(icon: Icon(Icons.photo), label: "Frames"),
            NamedIcon(icon: Icon(Icons.delete), label: "Deletes"),
          ],
        ),
      ),
    );
  }

  void showpropicBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    height20,
                    Text(
                      "Add profile photo",
                      style: myfont(size: 16.0),
                    ),
                    TextButton.icon(
                      onPressed: () async {
                        final profilePic = await ImagePicker()
                            .pickImage(source: ImageSource.camera);

                        setState(() {
                          Profile.profilePicture =
                              FileImage(File(profilePic!.path));
                        });
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.black,
                      ),
                      label: Text(
                        "Take a photo",
                        style: TextStyle(color: kblack),
                      ),
                    ),
                    TextButton.icon(
                        onPressed: () async {
                          final profilePic = await ImagePicker()
                              .pickImage(source: ImageSource.gallery);

                          setState(() {
                            Profile.profilePicture =
                                FileImage(File(profilePic!.path));
                          });
                        },
                        icon: Icon(
                          Icons.photo_library_sharp,
                          color: Colors.black,
                        ),
                        label: Text("Upload from photos",
                            style: TextStyle(color: kblack)))
                  ]),
            ),
          );
        });
  }
}
