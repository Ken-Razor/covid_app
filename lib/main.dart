import 'package:covidapp/callcenter.dart';
import 'package:covidapp/constant.dart';
import 'package:covidapp/homescreen.dart';
import 'package:covidapp/panduan.dart';
import 'package:covidapp/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covidapp/pages/notifPage.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(bodyText2: TextStyle(color: kBodyTextColor)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreenPage(),
    );
  }
}

