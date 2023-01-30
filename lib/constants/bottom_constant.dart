// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KRaisedButtonConstant extends StatelessWidget {
  KRaisedButtonConstant(
      {Key? key,
      this.color,
      this.icon,
      this.textcolor,
      this.text,
      this.sizef,
      this.onpres})
      : super(key: key);
  var icon;
  var color;
  var textcolor;
  var text;
  var sizef;
  var onpres;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: RaisedButton(
        onPressed: onpres,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              text,
              style: TextStyle(color: textcolor, fontSize: sizef),
            ),
          ],
        ),
        color: color,
      ),
    );
  }
}
