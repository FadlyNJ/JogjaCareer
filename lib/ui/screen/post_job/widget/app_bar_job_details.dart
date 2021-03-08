import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jogja_career/utils/const.dart';

class AppBarJobDetails extends StatefulWidget with PreferredSizeWidget {
  @override
  _AppBarJobDetailsState createState() => _AppBarJobDetailsState();

  @override
  Size get preferredSize => Size.fromHeight(60);
}

class _AppBarJobDetailsState extends State<AppBarJobDetails> {
  @override
  Widget build(BuildContext context) {
    return appBarJobDetails();
  }

  Widget appBarJobDetails() {
    return AppBar(
      title: Text(
        'Ketentuan',
        style: TextStyle(fontSize: 25),
      ),
      backgroundColor: kLightBlue,
      elevation: 0,
      centerTitle: true,
    );
  }
}
