import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jogja_career/utils/const.dart';

class AppBarCandidateDetails extends StatefulWidget with PreferredSizeWidget {
  @override
  _AppBarCandidateDetailsState createState() => _AppBarCandidateDetailsState();

  @override
  Size get preferredSize => Size.fromHeight(60);
}

class _AppBarCandidateDetailsState extends State<AppBarCandidateDetails> {
  @override
  Widget build(BuildContext context) {
    return appBarCandidateDetails();
  }

  Widget appBarCandidateDetails() {
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
              onPressed: Navigator.of(context).pop,
              tooltip: ('Back'),
              iconSize: 30,
            ),
          ],
        ),
      ],
    );
  }
}
