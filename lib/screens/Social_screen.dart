// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:podcast/constants/main_constant.dart';

class ScrialScreen extends StatefulWidget {
  ScrialScreen({Key? key}) : super(key: key);

  @override
  State<ScrialScreen> createState() => _ScrialScreenState();
}

class _ScrialScreenState extends State<ScrialScreen> {
  bool status = false;

  bool status1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff13131A),
        title: Text(
          'Social',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xff13131A),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          SizedBox(
            width: double.infinity,
            height: 80,
            child: Card(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Private Session',
                          style: TextStyle(color: Colors.white),
                        ),
                        Switch(
                          value: status,
                          onChanged: ((value) {
                            setState(() {
                              status = value;
                            });
                          }),
                          activeColor: kMainColor,
                        )
                      ]),
                )),
          ),
          SizedBox(
            width: double.infinity,
            height: 80,
            child: Card(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Listening Activity',
                          style: TextStyle(color: Colors.white),
                        ),
                        Switch(
                          value: status,
                          onChanged: ((value) {
                            setState(() {
                              status = value;
                            });
                          }),
                          activeColor: kMainColor,
                        )
                      ]),
                )),
          ),
          SizedBox(
            width: double.infinity,
            height: 80,
            child: Card(
                color: Colors.black,
                child: RaisedButton(
                  color: Colors.black,
                  onPressed: () {},
                  child: Row(children: [
                    ClipOval(
                      child: Image.asset('image/facebook-logo.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Connect to Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                  ]),
                )),
          ),
          SizedBox(
            width: double.infinity,
            height: 80,
            child: Card(
                color: Colors.black,
                child: RaisedButton(
                  color: Colors.black,
                  onPressed: () {},
                  child: Row(children: [
                    ClipOval(
                      child: Image.asset('image/Google Logo.svg.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Music Quality',
                      style: TextStyle(color: Colors.white),
                    ),
                  ]),
                )),
          ),
        ]),
      ),
    );
  }
}
