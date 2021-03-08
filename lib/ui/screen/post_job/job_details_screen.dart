import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/ui/screen/post_job/widget/app_bar_job_details.dart';
import 'package:jogja_career/ui/screen/post_job/widget/job_details_body.dart';

class DetailsJob extends StatefulWidget {
  @override
  _DetailsJobState createState() => _DetailsJobState();
}

class _DetailsJobState extends State<DetailsJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarJobDetails(),
      body: BodyJobDetails(),
    );
  }
}
