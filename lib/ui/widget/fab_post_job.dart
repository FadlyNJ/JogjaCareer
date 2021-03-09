import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jogja_career/utils/const.dart';
import 'package:jogja_career/ui/screen/new_job//new_job_screen.dart';

class FABPostJob extends StatefulWidget {
  @override
  _FABPostJobState createState() => _FABPostJobState();
}

class _FABPostJobState extends State<FABPostJob> {
  @override
  Widget build(BuildContext context) {
    return _fabAddJob();
  }

  Widget _fabAddJob() {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 0.9),
      child: new FloatingActionButton(
          child: new Icon(Icons.add),
          tooltip: ('Tambah Lowongan'),
          backgroundColor: kPrimaryColor,
          onPressed: _addJob),
    );
  }

  void _addJob() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return PostJob();
        },
      ),
    );
  }
}
