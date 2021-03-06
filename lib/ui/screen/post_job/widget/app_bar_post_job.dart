import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jogja_career/utils/const.dart';
import 'dart:math' as math;

class AppBarPostJob extends StatefulWidget with PreferredSizeWidget {
  @override
  _AppBarPostJobState createState() => _AppBarPostJobState();

  @override
  Size get preferredSize => Size.fromHeight(60);
}

class _AppBarPostJobState extends State<AppBarPostJob> {
  @override
  Widget build(BuildContext context) {
    return _appBarAddJob();
  }

  Widget _appBarAddJob() {
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: kLightBlue,
        automaticallyImplyLeading: false,
        title: Text('Post Lowongan',
            style: TextStyle(
              fontSize: 25,
            )),
        actions: [
          Transform.rotate(
            angle: 45 * math.pi / 180,
            child: IconButton(
                icon: Icon(Icons.add),
                tooltip: ('Close'),
                onPressed: Navigator.of(context).pop),
          ),
        ],
      ),
    );
  }
}
