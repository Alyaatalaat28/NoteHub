// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../constants.dart';

ThemeData lightTheme =ThemeData(
  scaffoldBackgroundColor:wColor,
   textTheme: const TextTheme(
    bodyText1: TextStyle(
       color:kPrimaryColor,
    ),)
);

ThemeData darkTheme =ThemeData(
  scaffoldBackgroundColor: kPrimaryColor, 
  textTheme: const TextTheme(
    bodyText1: TextStyle(
       color:wColor,
    ),
  ),
);