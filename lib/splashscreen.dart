import 'dart:async';
import 'package:covidapp/landing_page.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  startSplashScreen() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_){
            return MyBottomNavigationBar();
          })
      );
    });
  }
  void initState() {
    startSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.purple.shade500,
        body: Container(
          decoration: BoxDecoration(color: Colors.purple.shade500),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  "assets/images/logo.png",
//                  width: 500.0,
//                  height: 500.0,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "#Fight COVID-19\n \nApp By Kenthea\n \n",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        )
      );
  }
}



