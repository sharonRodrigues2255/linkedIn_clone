import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation.dart';

class AnimatedBottomNavigationBar extends StatelessWidget {
  final changeindex;
  const AnimatedBottomNavigationBar({super.key, required this.changeindex});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      curve: Curves.fastLinearToSlowEaseIn,
      height: isVisible ? 50 : 0,
      child: SingleChildScrollView(
        child: BottomNavigationBar(
          onTap: changeindex,
          currentIndex: seclectedIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.people_alt_rounded,
                ),
                label: "My Network"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box,
                ),
                label: "Post"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                label: "Notifications"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.work_rounded,
                ),
                label: "Jobs"),
          ],
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedItemColor: kblack,
          iconSize: 25,
          selectedLabelStyle: TextStyle(color: kred),
        ),
      ),
    );
  }
}
