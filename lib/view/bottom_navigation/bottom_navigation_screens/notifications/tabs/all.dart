import 'package:flutter/material.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/notifications/database_notifs/db.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/notifications/database_notifs/notifs_format.dart';

class All extends StatelessWidget {
  const All({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: NotificationsData.notifications.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      NotificationsData.notifications[index]['image']),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    checkTypeNotification(
                      NotificationsData.notifications[index],
                    ),
                    Container(
                      child: returnCurveRectangle(
                          NotificationsData.notifications[index]),
                    )
                  ],
                ),
                trailing: Column(
                  children: [Text("4d"), Icon(Icons.more_vert)],
                ),
              ));
        });
  }
}
