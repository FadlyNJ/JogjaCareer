import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/utils/const.dart';

Widget candidateDetail(int index, BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: kPrimaryColor,
      title: Text('Candidate Details'),
      leading: Container(
        color: Colors.white,
        child: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: Navigator.of(context).pop,
          tooltip: ('Back'),
        ),
      ),
      actions: [
        Container(
            color: Colors.white,
            child: IconButton(
                icon: Icon(Icons.share_outlined),
                onPressed: Navigator.of(context).pop,
                tooltip: ('Share'))),
      ],
    ),
    body: Align(
      alignment: Alignment.center,
      child: Text('This is Card Number $index'),
    ),
  );
}
