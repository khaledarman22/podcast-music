import 'package:flutter/material.dart';
import 'package:podcast/constants/main_constant.dart';
import 'package:podcast/data/popular_broadcast.dart';

class ProfileScreem extends StatelessWidget {
  const ProfileScreem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff13131A),
      appBar: AppBar(
        leading: null,
        elevation: 0,
        backgroundColor: Color(0xff13131A),
        title: Text(
          maxLines: 1,
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'MoreScreen');
            },
            icon: Icon(Icons.more_vert),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.search),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    child: ClipOval(child: Image.asset('image/Image3.png')),
                  ),
                  Text(
                    'Gail Forcewind',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    'gailforcewind2009@email.com  ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w300),
                  )
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 5,
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Favourite Podcasts',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Pope.length,
                          itemBuilder: (BuildContext context, int index) {
                            pop us = Pope[index];
                            return Container(
                              margin: EdgeInsets.all(10),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('${us.Image}'))),
                            );
                          },
                        ),
                      ),
                    ]),
              )),
          Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Favourite Radio Stations',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )),
          Expanded(
              flex: 8,
              child: Container(
                child: ListView.builder(
                  itemCount: Pope.length,
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
                            ]));
                  },
                ),
              )),
        ]),
      ),
    );
  }
}
