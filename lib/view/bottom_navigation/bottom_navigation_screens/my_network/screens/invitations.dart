import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';

class Invitations extends StatelessWidget {
  const Invitations({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: Text("Invitations"),
            actions: [
              Icon(
                Icons.settings,
                color: kblack,
              ),
              width20
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 180,
                      child: TabBar.secondary(
                          tabs: [Text("Recieved"), Text("Sent")])),
                ],
              ),
            )),
        body: TabBarView(children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  width10,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 30,
                      child: Center(
                          child: Text(
                        "All(0)",
                        style: TextStyle(
                            color: kwhite, fontWeight: FontWeight.bold),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 57, 130, 59)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 200,
              ),
              Center(
                child: Image(
                    height: 250,
                    width: 250,
                    image: AssetImage("assets/images/noInvitationsImage.jpg")),
              )
            ],
          ),
          Center(
            child: Text("test"),
          )
        ]),
      ),
    );
  }
}
