import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/myfont.dart';

class Notifs {
  static posted({required String post, required String name}) {
    return RichText(
        text: TextSpan(
            text: name,
            style: myfontNormal(weight: FontWeight.bold),
            children: [TextSpan(text: "posted : $post")]));
  }

  static congratsNewPosition(
      {required String name,
      required String position,
      required String company}) {
    return RichText(
        text: TextSpan(text: "Congratulate ", children: [
      TextSpan(text: name, style: myfontNormal(weight: FontWeight.bold)),
      TextSpan(text: "on starting a new position as $position at"),
      TextSpan(text: company, style: myfontNormal(weight: FontWeight.bold))
    ]));
  }

  static congratsAniversary(
      {required String name, required int years, required String company}) {
    return RichText(
        text: TextSpan(text: "Congratulate", children: [
      TextSpan(text: name, style: myfontNormal(weight: FontWeight.bold)),
      TextSpan(text: "on $years year at "),
      TextSpan(text: company, style: myfontNormal(weight: FontWeight.bold))
    ]));
  }

  static viewedProfile({required String name}) {
    return RichText(
        text: TextSpan(
            text: name,
            style: myfontNormal(weight: FontWeight.bold),
            children: [TextSpan(text: "viewed your profile. See all views.")]));
  }

  static opertunities(
      {required String position,
      required String number,
      required String place}) {
    RichText(
        text: TextSpan(
            text: "$position $number",
            style: myfontNormal(weight: FontWeight.bold),
            children: [
          TextSpan(text: "opertunities in"),
          TextSpan(text: place, style: myfontNormal(weight: FontWeight.bold))
        ]));
  }
}
