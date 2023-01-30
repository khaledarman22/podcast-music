// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:podcast/constants/main_constant.dart';
import 'package:podcast/screens/EventsView_screen.dart';
import 'package:podcast/screens/Events_screen.dart';
import 'package:podcast/screens/Playback_screen.dart';
import 'package:podcast/screens/PopularBroadcast_screen.dart';
import 'package:podcast/screens/Profile_screen.dart';
import 'package:podcast/screens/Signup_screen.dart';
import 'package:podcast/screens/home_screen.dart';
import 'package:podcast/screens/login_screen.dart';

class NavHomeScreen extends StatefulWidget {
  NavHomeScreen({Key? key}) : super(key: key);

  @override
  State<NavHomeScreen> createState() => _NavHomeScreenState();
}

class _NavHomeScreenState extends State<NavHomeScreen> {
  int celectedindex = 0;
  List<Widget> navrout = [
    HomeScreen(),
    PopularBodcastscreen(),
    EventsScreen(),
    EventsScreen(),
    ProfileScreem(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: ((value) {
            setState(() {
              celectedindex = value;
            });
          }),
          selectedIconTheme: IconThemeData(color: kMainColor, size: 20),
          elevation: 0,
          fixedColor: kMainColor,
          backgroundColor: Color(0xff181A26),
          currentIndex: celectedindex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                backgroundColor: Color(0xff181A26),
                label: 'Home',
                icon: Icon(Icons.home_filled)),
            BottomNavigationBarItem(
                backgroundColor: Color(0xff181A26),
                label: 'Radio Stations',
                icon: Icon(Icons.align_horizontal_center_outlined)),
            BottomNavigationBarItem(
                backgroundColor: Color(0xff181A26),
                label: 'Radio Stations',
                icon: Icon(Icons.texture_outlined)),
            BottomNavigationBarItem(
                backgroundColor: Color(0xff181A26),
                label: 'Events',
                icon: Icon(Icons.business_center_sharp)),
            BottomNavigationBarItem(
                backgroundColor: Color(0xff181A26),
                label: 'Radio Stations',
                icon: Icon(Icons.perm_identity_outlined)),
          ]),
      body: navrout.elementAt(celectedindex),
    );
  }
}
