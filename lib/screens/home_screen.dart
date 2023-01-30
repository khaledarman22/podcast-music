// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:podcast/constants/main_constant.dart';
import 'package:podcast/data/popular_broadcast.dart';
import 'package:podcast/screens/BroadcastPlay_screen.dart';
import 'package:podcast/screens/Playback_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff13131A),
      body: ListView(children: [
        Container(
          height: MediaQuery.of(context).size.height / 2 + 50,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                child: PageView(
                  controller: _controller,
                  children: [
                    Image.asset(
                      'image/Slider-image.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset('image/Logo.png'),
                    Image.asset('image/Logo.png'),
                    Image.asset('image/Logo.png'),
                    Image.asset('image/Logo.png'),
                    Image.asset('image/Logo.png'),
                  ],
                ),
                color: Colors.black87,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5 - 50,
              ),
              Positioned(
                  right: 20,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    color: Colors.white54,
                    iconSize: 30,
                  )),
              Positioned(
                bottom: 0,
                top: 40,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          SmoothPageIndicator(
                            controller: _controller,
                            count: 5,
                            axisDirection: Axis.vertical,
                            effect: SlideEffect(
                                dotHeight: 10,
                                dotWidth: 10,
                                dotColor: Colors.white,
                                activeDotColor: kMainColor),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Text(
                                  'Tapitha Nauser',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Bulletproof',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Positioned(
              //     bottom: MediaQuery.of(context).size.height / 20,
              //     left: 20,
              //     child: Text(
              //       'Popular Broadcast',
              //       style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 15,
              //           fontWeight: FontWeight.bold),
              //     )),
              Positioned(
                bottom: MediaQuery.of(context).size.height * -.05,
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Simiar Boradcast',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * .47,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Pope.length,
                        itemBuilder: (BuildContext context, i) {
                          pop us = Pope[i];
                          return Container(
                            height: 100,
                            width: 100,
                            color: Colors.transparent,
                            child: Column(children: [
                              Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 200,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          '${us.Image}',
                                        ),
                                        alignment: Alignment.center,
                                        fit: BoxFit.cover),
                                  )),
                              Text(
                                '${us.title}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                '${us.doc}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white54),
                              ),
                            ]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              // Positioned(
              //   bottom: -MediaQuery.of(context).size.height / 6.5,
              //   left: 20,
              //   right: 0,
              //   child: Text(
              //     'Simiar Boradcast',
              //     style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 15,
              //         fontWeight: FontWeight.bold),
              //   ),
              // )
            ],
          ),
        ),
        // SizedBox(
        //   height: MediaQuery.of(context).size.height * .2,
        // ),
        SizedBox(
          height: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Simiar Boradcast',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3 - 30,
              color: Colors.transparent,
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  pop us = Pope[index];
                  return RaisedButton(
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BroadCastPlayScreen(
                                va: us,
                              )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.all(10),
                      width: double.infinity,
                      height: 100,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        '${us.Image}',
                                      ),
                                      alignment: Alignment.center,
                                      fit: BoxFit.cover),
                                )),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${us.title}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '${us.doc}',
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 12),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.air,
                                  color: Colors.white,
                                ))
                          ]),
                    ),
                  );
                },
              ),
            ),
          ],
        )
      ]),
    );
  }
}
