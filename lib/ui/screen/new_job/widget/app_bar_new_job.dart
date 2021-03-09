import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jogja_career/utils/const.dart';

class AppBarNewJob extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: kLightBlue,
      automaticallyImplyLeading: false,
      title: Text('Post Lowongan',
          style: TextStyle(
            fontSize: 25,
          )),
      actions: [
        IconButton(
            icon: Icon(Icons.clear),
            tooltip: ('Close'),
            onPressed: Navigator.of(context).pop),
      ],
    );
  }
}

class AppBarJobDetails extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kLightBlue,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Ketentuan',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}

class AppBarUploadJob extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kLightBlue,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Posting Lowongan',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
