// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LogoStatec extends StatelessWidget {
  const LogoStatec({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'image/Group 11599.png',
          width: MediaQuery.of(context).size.width - 200,
          height: double.infinity,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 105, top: 20),
              child: const Text(
                'RADIO STATION',
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 133),
              child: const Text(
                'YOUR DAILY DOSE OF HAPPINESS',
                style: TextStyle(color: Colors.white54, wordSpacing: .5),
              ),
            )
          ],
        ),
      ],
    );
  }
}
