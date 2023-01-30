// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:podcast/constants/main_constant.dart';
import 'package:podcast/data/popular_broadcast.dart';

class BroadCastPlayScreen extends StatefulWidget {
  final pop va;
  BroadCastPlayScreen({Key? key, required this.va}) : super(key: key);

  @override
  State<BroadCastPlayScreen> createState() => _PlayBackSCreenState();
}

class _PlayBackSCreenState extends State<BroadCastPlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('${widget.va.Image}'),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                  bottom: -70,
                  right: 0,
                  left: 0,
                  child: Container(
                    child: Image.asset('${widget.va.Image}'),
                  ))
            ],
          ),
          Container(
            child: Text(
              '${widget.va.title}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              '${widget.va.doc}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w200),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '42.08',
                  style: TextStyle(color: Colors.white54),
                ),
                Flexible(
                  flex: 1,
                  child: Slider(
                    value: 20,
                    min: 0,
                    max: 100,
                    activeColor: kMainColor,
                    onChanged: (double value) {},
                  ),
                ),
                Text(
                  '42.08',
                  style: TextStyle(color: Colors.white54),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_left,
                color: Colors.white,
                size: 100,
              ),
              Icon(Icons.pause_circle, color: Colors.white, size: 100),
              Icon(Icons.arrow_right, color: Colors.white, size: 100),
            ],
          )
        ],
      ),
    );
  }
}
