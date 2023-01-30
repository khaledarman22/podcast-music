// ignore_for_file: non_constant_identifier_names, unnecessary_this

import 'package:flutter/material.dart';

class KChechedBox extends StatefulWidget {
  const KChechedBox({
    Key? key,
  }) : super(key: key);

  @override
  State<KChechedBox> createState() => _KChechedBoxState();
}

class _KChechedBoxState extends State<KChechedBox> {
  bool value = false;
  void CheckBocChange(bool? value) {
    setState(() {
      this.value = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: this.value,
      onChanged: CheckBocChange,
    );
  }
}
