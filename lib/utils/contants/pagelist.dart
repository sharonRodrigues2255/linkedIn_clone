import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/home/home_screen.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/jobs/jobs_screen.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/my_network/my_network_screen.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/notifications/notifications_screen.dart';
import 'package:linkedin_clone/view/bottom_navigation/bottom_navigation_screens/post/post_screen.dart';

class PageList {
  static List pagelist = const [
    HomeScreen(),
    MyNetworkScreen(),
    PostScreen(),
    NotificationScreen(),
    JobScreen()
  ];
}
