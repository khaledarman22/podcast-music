import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcast/constants/main_constant.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('image/3d Image with Elements.png'),
              fit: BoxFit.contain)),
      child: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .03,
        ),
        Expanded(
          flex: 3,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Skap',
                  style: TextStyle(color: kMainColor),
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Container(
                child: Text(
                  'Tune your Radio',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 40,
                      wordSpacing: -15),
                ),
              ),
              Container(
                child: Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white54,
                    decoration: TextDecoration.none,
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
