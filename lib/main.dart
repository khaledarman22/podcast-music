// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:podcast/constants/search_delegate.dart';
import 'package:podcast/data/popular_broadcast.dart';
import 'package:podcast/nav-home-screen.dart';
import 'package:podcast/screens/AboutUs_screen.dart';
import 'package:podcast/screens/BroadcastPlay_screen.dart';
import 'package:podcast/screens/Connecttodevice_screen.dart';
import 'package:podcast/screens/EventsView_screen.dart';
import 'package:podcast/screens/Events_screen.dart';
import 'package:podcast/screens/ForgetPassword_screen.dart';
import 'package:podcast/screens/More_screen.dart';
import 'package:podcast/screens/MusicQuality_screen.dart';
import 'package:podcast/screens/Playback_screen.dart';
import 'package:podcast/screens/PopularBroadcast_screen.dart';
import 'package:podcast/screens/RadioBroadcast_screen.dart';
import 'package:podcast/screens/RecentlyPlayed_screen.dart';
import 'package:podcast/screens/Search_screen.dart';
import 'package:podcast/screens/Signup_screen.dart';
import 'package:podcast/screens/Social_screen.dart';
import 'package:podcast/screens/Splash_screen.dart';
import 'package:podcast/screens/Terms&Conditions_screen.dart';
import 'package:podcast/screens/Tutorial_screen.dart';
import 'package:podcast/screens/home_screen.dart';
import 'package:podcast/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PodCast',
      home: SplashScreen(),
      initialRoute: 'SplashScreen',
      routes: {
        'SplashScreen': (context) => SplashScreen(),
        'KSearchDdel': (context) => KSearchDdel(),
        'LoginScreen': (context) => LoginScreen(),
        'NavHomeScreen': (context) => NavHomeScreen(),
        'SignUpScreen': (context) => SignUpScreen(),
        'RecentlyPlayedScreen': (context) => RecentlyPlayedScreen(),
        'TutorialScreen': (context) => TutorialScreen(),
        'BroadCastPlayScreen': (context) => BroadCastPlayScreen(va: popel1),
        'EventsScreen': (context) => EventsScreen(),
        'EventsViewScreen': (context) => EventsViewScreen(),
        'PlayBoakScreen': (context) => PlayBoakScreen(),
        'PopularBodcastscreen': (context) => PopularBodcastscreen(),
        'ForgetPassword': (context) => ForgetPassword(),
        'MoreScreen': (context) => MoreScreen(),
        'ConnectToDeviceScreen': (context) => ConnectToDeviceScreen(),
        'ScrialScreen': (context) => ScrialScreen(),
        'MusicQualitySCreen': (context) => MusicQualitySCreen(),
        'AboutUsScreen': (context) => AboutUsScreen(),
        'TermsScreen': (context) => TermsScreen(),
      },
    );
  }
}
