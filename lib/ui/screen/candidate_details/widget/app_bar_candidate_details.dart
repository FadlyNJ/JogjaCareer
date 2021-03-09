import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jogja_career/utils/const.dart';

class AppBarCandidateDetails extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      leading: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 36,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: Navigator.of(context).pop,
            tooltip: ('Back'),
            iconSize: 30,
          ),
        ],
      ),
      actions: [
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: 36,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            IconButton(
              icon: Icon(Icons.share_outlined),
              onPressed: onPressed,
              tooltip: ('Share'),
              iconSize: 30,
            ),
          ],
        ),
      ],
    );
  }

  void onPressed() {}
}
