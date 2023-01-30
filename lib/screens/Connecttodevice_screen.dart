import 'package:flutter/material.dart';

class ConnectToDeviceScreen extends StatelessWidget {
  const ConnectToDeviceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff13131A),
        title: Text(
          'More',
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
                  child: Row(children: [
                    Icon(
                      Icons.computer_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Playback',
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
                    Icon(
                      Icons.live_tv_sharp,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Connect to device',
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
                    Icon(
                      Icons.wifi,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Social',
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
                    Icon(
                      Icons.chrome_reader_mode_outlined,
                      color: Colors.white,
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
          SizedBox(
            width: double.infinity,
            height: 80,
            child: Card(
                color: Colors.black,
                child: RaisedButton(
                  color: Colors.black,
                  onPressed: () {},
                  child: Row(children: [
                    Icon(
                      Icons.bluetooth,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'About Us',
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
