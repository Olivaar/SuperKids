import 'package:flutter/material.dart';
import 'package:superkids/views/challengeMenu_view.dart';
import 'package:superkids/views/challenge_view.dart';
import 'package:superkids/views/indicators_view.dart';
import 'package:superkids/views/login_view.dart';
import 'package:superkids/views/market_view.dart';
import 'views/home_view.dart';
import 'package:superkids/views/dataPlayer_view.dart';

final ThemeData temaPadrao = ThemeData(
  primaryColor: Color(0xffFF1493),
  accentColor: Color(0xff000000),
  fontFamily: 'OpenSans',
);

void main() {
  runApp(MaterialApp(
    title: "SuperKids",
    theme: temaPadrao,
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Login(),
      '/home': (context) => Home(),
      '/dataPlayer': (context) => dataPlayer(),
      '/challengeView': (context) => ChallengeView(),
      '/challengeMenu': (context) => ChallengeMenu(),
      '/indicators': (context) => Indicators(),
      '/market': (context) => Market(),
    },
  ));
}
