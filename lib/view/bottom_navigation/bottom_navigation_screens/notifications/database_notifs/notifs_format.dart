import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';
import 'package:linkedin_clone/utils/contants/contant_sizes.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';
import 'package:linkedin_clone/view/profile_page/widgets/curve_rectangle.dart';

RichText checkTypeNotification(Map<String, dynamic> dbItem) {
  final type = dbItem["type"];

  switch (type) {
    case "posted":
      return Notifs.posted(post: dbItem["post"], name: dbItem["name"]);
    case "congratsnewposition":
      return Notifs.congratsNewPosition(
          name: dbItem['name'],
          position: dbItem['position'],
          company: dbItem['company']);
    case "congratsAniversary":
      return Notifs.congratsAniversary(
          name: dbItem['name'],
          years: dbItem['years'],
          company: dbItem['company']);
    case "viewedProfile":
      return Notifs.viewedProfile(name: dbItem['name']);
    case "opertunities":
      return Notifs.opertunities(
          position: dbItem['position'],
          number: dbItem['number'],
          place: dbItem['place']);
    default:
      return RichText(text: TextSpan(text: "hehe"));
  }
}

Widget returnCurveRectangle(Map<String, dynamic> dbItem) {
  final type = dbItem["type"];
  if (type == "congratsnewposition" || type == "congratsAniversary") {
    return Column(
      children: [
        height20,
        CurveRectangle(
          mediaWidth: 300,
          title: "Say Congrats",
          color: kblue,
        ),
      ],
    );
  } else if (type == "opertunities") {
    return Column(
      children: [
        height20,
        CurveRectangle(
          mediaWidth: 220,
          title: "View jobs",
          color: kblue,
        ),
      ],
    );
  } else {
    return SizedBox();
  }
}

class Notifs {
  static posted({required String post, required String name}) {
    return RichText(
        text: TextSpan(
            text: name,
            style: myfontNormal(weight: FontWeight.bold),
            children: [
          TextSpan(text: " posted : $post", style: myfontNormal()),
        ]));
  }

  static congratsNewPosition(
      {required String name,
      required String position,
      required String company}) {
    return RichText(
        text: TextSpan(text: "Congratulate ", style: myfontNormal(), children: [
      TextSpan(text: name, style: myfontNormal(weight: FontWeight.bold)),
      TextSpan(
          text: " on starting a new position as $position at",
          style: myfontNormal()),
      TextSpan(text: company, style: myfontNormal(weight: FontWeight.bold))
    ]));
  }

  static congratsAniversary(
      {required String name, required String years, required String company}) {
    return RichText(
        text: TextSpan(text: "Congratulate ", style: myfontNormal(), children: [
      TextSpan(text: name, style: myfontNormal(weight: FontWeight.bold)),
      TextSpan(text: " on $years year at ", style: myfontNormal()),
      TextSpan(text: company, style: myfontNormal(weight: FontWeight.bold))
    ]));
  }

  static viewedProfile({required String name}) {
    return RichText(
        text: TextSpan(
            text: name,
            style: myfontNormal(weight: FontWeight.bold),
            children: [
          TextSpan(
              text: " viewed your profile. See all views.",
              style: myfontNormal())
        ]));
  }

  static opertunities(
      {required String position,
      required String number,
      required String place}) {
    return RichText(
        text: TextSpan(
            text: "$position $number",
            style: myfontNormal(weight: FontWeight.bold),
            children: [
          TextSpan(text: " opertunities in ", style: myfontNormal()),
          TextSpan(text: place, style: myfontNormal(weight: FontWeight.bold))
        ]));
  }
}
