// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class KTextField extends StatelessWidget {
  KTextField({Key? key, this.hint, this.icon}) : super(key: key);
  var hint;
  var icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFF1D192C),
        prefixIcon: icon,
        hintText: hint,
        hintStyle: TextStyle(
          color: Color(0xFF7477A0),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF1D192C)),
            borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF1D192C)),
            borderRadius: BorderRadius.circular(10)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF1D192C)),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
