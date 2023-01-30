// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:podcast/constants/bottom_constant.dart';
import 'package:podcast/constants/main_constant.dart';
import 'package:podcast/constants/search_delegate.dart';
import 'package:podcast/data/popular_broadcast.dart';

class PopularBodcastscreen extends StatelessWidget {
  const PopularBodcastscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(0xff1F1F2C),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xff1F1F2C),
            actions: [
              IconButton(
                  autofocus: true,
                  onPressed: () {
                    Navigator.of(context).pushNamed('KSearchDdel');
                  },
                  icon: Icon(Icons.search))
            ],
            title: Text(
              'Radio Stations',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            bottom: TabBar(
                labelColor: kMainColor,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.transparent,
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * .26),
                tabs: [
                  Tab(
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        'Popular Broadcast',
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        'Radio Genre',
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            Column(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('image/Rectangle.png'),
                            fit: BoxFit.cover,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Enjoy your day with RadioApp',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'Tune your radio now',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 23),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 180,
                              height: 60,
                              child: KRaisedButtonConstant(
                                text: 'Tune Now',
                                sizef: 15.0,
                                color: kMainColor,
                                textcolor: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * .7 - 50,
                    color: Colors.transparent,
                    child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (BuildContext context, int index) {
                        pop us = Pope[index];
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.all(10),
                          width: double.infinity,
                          height: 100,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(
                                  image: AssetImage('${us.Image}'),
                                  fit: BoxFit.cover,
                                ),
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
                        );
                      },
                    ),
                  ),
                ],
              ),
            ]),
//====================================================
            Column(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('image/Rectangle.png'),
                            fit: BoxFit.cover,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Enjoy your day with RadioApp',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    'Tune your radio now',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 23),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 180,
                              height: 60,
                              child: KRaisedButtonConstant(
                                text: 'Tune Now',
                                sizef: 15.0,
                                color: kMainColor,
                                textcolor: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .6,
                      color: Colors.transparent,
                      child: ListView.builder(
                        itemCount: 7,
                        itemBuilder: (BuildContext context, int index) {
                          pop us = Pope[index];
                          return Container(
                            margin: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${us.title}',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.arrow_circle_right_rounded,
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ]),
        ));
  }
}
