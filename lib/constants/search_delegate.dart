import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:podcast/constants/main_constant.dart';

class KSearchDdel extends StatefulWidget {
  KSearchDdel({Key? key}) : super(key: key);

  @override
  State<KSearchDdel> createState() => _KSearchDdelState();
}

class _KSearchDdelState extends State<KSearchDdel> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Container(
          child: AnimSearchBar(
        autoFocus: true,
        width: MediaQuery.of(context).size.width - 20,
        textController: textController,
        onSuffixTap: null,
      )),
    );
  }
}
