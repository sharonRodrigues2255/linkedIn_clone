import 'package:flutter/material.dart';

import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/notifications/tabs.dart';
import 'package:linkedin_clone/view/bottom_navigation/widgets/appbar_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: tabindexnotifier,
            builder: (context, int value, _) {
              return value == 0
                  ? All()
                  : value == 1
                      ? MyPost()
                      : Mentions();
            }));
  }
}
