import 'package:flutter/material.dart';
import 'package:podcast/constants/main_constant.dart';

class MusicQualitySCreen extends StatefulWidget {
  MusicQualitySCreen({Key? key}) : super(key: key);

  @override
  State<MusicQualitySCreen> createState() => _MusicQualitySCreenState();
}

class _MusicQualitySCreenState extends State<MusicQualitySCreen> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff13131A),
        title: Text(
          'Music Quality',
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
                child: RaisedButton(
                  color: Colors.black,
                  onPressed: () {},
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Streaming',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Automatic',
                          style: TextStyle(color: Colors.white54),
                        ),
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
                          'Download using cellular',
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
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Equalizer',
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
