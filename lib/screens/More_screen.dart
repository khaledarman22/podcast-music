import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

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
                  onPressed: () {
                    Navigator.pushNamed(context, 'PlayBoakScreen');
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Playback',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
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
                    Navigator.pushNamed(context, 'ConnectToDeviceScreen');
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Connect to device',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
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
                    Navigator.pushNamed(context, 'ScrialScreen');
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Social',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
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
                    Navigator.pushNamed(context, 'MusicQualitySCreen');
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Music Quality',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
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
                    Navigator.pushNamed(context, 'AboutUsScreen');
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'About Us',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        )
                      ]),
                )),
          ),
        ]),
      ),
    );
  }
}
