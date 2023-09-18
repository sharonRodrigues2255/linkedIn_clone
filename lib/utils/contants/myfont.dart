import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/contants/colors.dart';

const bolder = FontWeight.w900;
const light = FontWeight.w300;
const regular = FontWeight.w500;

myfont({size = 20.0, color = kblack, weight = FontWeight.bold}) {
  return TextStyle(fontSize: size, color: color, fontWeight: weight);
}
