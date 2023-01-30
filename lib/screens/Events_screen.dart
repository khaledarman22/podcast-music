import 'package:flutter/material.dart';
import 'package:podcast/constants/main_constant.dart';
import 'package:podcast/data/evetsdata.dart';
import 'package:podcast/data/popular_broadcast.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff181A26),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Scaffold(
          backgroundColor: Color(0xff181A26),
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Color(0xff181A26),
              centerTitle: false,
              titleTextStyle: TextStyle(),
              title: Text(
                'Events',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              actions: [
                Icon(
                  Icons.map,
                  color: Colors.white54,
                ),
                Icon(
                  Icons.search,
                  color: Colors.white54,
                ),
              ]),
          body: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Populer Events',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(color: kMainColor),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Pope.length,
                  itemBuilder: (BuildContext context, int index) {
                    pop us = Pope[index];
                    return Container(
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 150,
                                height: 150,
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
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '${us.doc}',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 10,
                              ),
                            )
                          ]),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Pope.length,
                  itemBuilder: (BuildContext context, int index) {
                    pop us = Pope[index];
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      width: MediaQuery.of(context).size.width - 20,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                'image/Rectangle.png',
                              ),
                              fit: BoxFit.cover)),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10, left: 10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${us.title}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '${us.doc}',
                                style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Events.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text(
                        '${Events[index]}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ));
                  },
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Pope.length,
                  itemBuilder: (BuildContext context, int index) {
                    pop us = Pope[index];
                    return Container(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RaisedButton(
                              color: Colors.transparent,
                              onPressed: () {
                                Navigator.of(context)
                                    .popAndPushNamed('routeName');
                              },
                              child: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  width: 150,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          '${us.Image}',
                                        ),
                                        alignment: Alignment.center,
                                        fit: BoxFit.cover),
                                  )),
                            ),
                            Text(
                              '${us.title}',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '${us.doc}',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 10,
                              ),
                            )
                          ]),
                    );
                  },
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
