import 'package:flutter/material.dart';
import 'package:podcast/constants/main_constant.dart';

class PlayBoakScreen extends StatefulWidget {
  PlayBoakScreen({Key? key}) : super(key: key);
  var va = false;
  @override
  State<PlayBoakScreen> createState() => _PlayBoakScreenState();
}

class _PlayBoakScreenState extends State<PlayBoakScreen> {
  bool status = false;
  bool status1 = false;
  bool status2 = false;
  bool status3 = true;
  bool status4 = false;
  bool status5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff13131A),
        title: Text(
          'Playback',
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
                  onPressed: () {
                    Navigator.pushNamed(context, 'PlayBoakScreen');
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gapless',
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
                  onPressed: () {
                    Navigator.pushNamed(context, 'PlayBoakScreen');
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Automix',
                          style: TextStyle(color: Colors.white),
                        ),
                        Switch(
                          value: status1,
                          onChanged: ((value) {
                            setState(() {
                              status1 = value;
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
                  onPressed: () {
                    Navigator.pushNamed(context, 'PlayBoakScreen');
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Show Unplayable Songs',
                          style: TextStyle(color: Colors.white),
                        ),
                        Switch(
                          value: status2,
                          onChanged: ((value) {
                            setState(() {
                              status2 = value;
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
                  onPressed: () {
                    Navigator.pushNamed(context, 'PlayBoakScreen');
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Normalize Volume',
                          style: TextStyle(color: Colors.white),
                        ),
                        Switch(
                          value: status3,
                          onChanged: ((value) {
                            setState(() {
                              status3 = value;
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
                  onPressed: () {
                    Navigator.pushNamed(context, 'PlayBoakScreen');
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Autoplay',
                          style: TextStyle(color: Colors.white),
                        ),
                        Switch(
                          value: status4,
                          onChanged: ((value) {
                            setState(() {
                              status4 = value;
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
                  onPressed: () {
                    Navigator.pushNamed(context, 'PlayBoakScreen');
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Canvas',
                          style: TextStyle(color: Colors.white),
                        ),
                        Switch(
                          value: status5,
                          onChanged: ((value) {
                            setState(() {
                              status5 = value;
                            });
                          }),
                          activeColor: kMainColor,
                        )
                      ]),
                )),
          ),
        ]),
      ),
    );
  }
}
