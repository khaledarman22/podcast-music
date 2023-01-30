// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:podcast/constants/logostatec.dart';
import 'package:podcast/constants/search_delegate.dart';
import 'package:podcast/main.dart';
import 'package:podcast/nav-home-screen.dart';
import 'package:podcast/screens/ForgetPassword_screen.dart';
import 'package:podcast/screens/PopularBroadcast_screen.dart';
import 'package:podcast/screens/Search_screen.dart';
import 'package:podcast/screens/Signup_screen.dart';
import 'package:podcast/screens/Tutorial_screen.dart';
import 'package:podcast/screens/home_screen.dart';
import 'package:podcast/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: MediaQuery.of(context).size.height,
      nextScreen: LoginScreen(),
      duration: 5,
      splash: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/Background.jpg'), fit: BoxFit.cover)),
        child: LogoStatec(),
      ),
    );
  }
}
