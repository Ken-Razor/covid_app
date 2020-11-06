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

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SecondPage(),
    ThirdPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
              "assets/images/logo.png",
            width: 70.0,
            height: 70.0,
          ),
        ),
        backgroundColor: Colors.purple.shade500,
        elevation: 0.0,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.all(5),
//              child: SvgPicture.asset(
//                "assets/icons/music.svg",
//                width: 35,
//              ),
            ),
          ),
        ],
      ),
      body: DoubleBackToCloseApp(
        child: _widgetOptions.elementAt(_selectedIndex),
        snackBar: const SnackBar(content: Text('Klik 1x Lagi Untuk Keluar Aplikasi')),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Panduan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            title: Text('Call Center'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple.shade600,
        onTap: _onItemTapped,
      ),
    );
  }
}