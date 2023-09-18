import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:linkedin_clone/utils/contants/pagelist.dart';
import 'package:linkedin_clone/view/bottom_navigation/widgets/appbar_widget.dart';
import 'package:linkedin_clone/view/bottom_navigation/widgets/bottom_navigationbar_widget.dart';
import 'package:linkedin_clone/view/bottom_navigation/widgets/drawer_widget.dart';

var isVisible = true;
var seclectedIndex = 0;

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  void changeIndex(int index) {
    setState(() {
      seclectedIndex = index;
    });
  }

  void hideBottom() {
    setState(() {
      isVisible = false;
    });
  }

  void showBottom() {
    setState(() {
      isVisible = true;
    });
  }

  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        showBottom();
      } else if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        hideBottom();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      body: SafeArea(
        child: NestedScrollView(
            controller: seclectedIndex == 1 ? null : scrollController,
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, isVisible) {
              return [
                AppBarWidget(
                  index: seclectedIndex,
                )
              ];
            },
            body: PageList.pagelist[seclectedIndex]),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        changeindex: changeIndex,
      ),
    );
  }
}
