// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:podcast/constants/main_constant.dart';
import 'package:podcast/page_tutorial/page1.dart';
import 'package:podcast/page_tutorial/page3.dart';
import 'package:podcast/page_tutorial/page4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../page_tutorial/page2.dart';

class TutorialScreen extends StatelessWidget {
  TutorialScreen({Key? key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('image/Background.png'), fit: BoxFit.cover)),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 60,
            child: PageView(
              controller: _controller,
              children: [Page1(), Page2(), Page3(), Page4()],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Previous',
                    style: TextStyle(color: kMainColor),
                  )),
              SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ExpandingDotsEffect(
                    dotColor: Colors.black54, activeDotColor: kMainColor),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'NavHomeScreen');
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: kMainColor),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
