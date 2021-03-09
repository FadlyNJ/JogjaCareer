import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/ui/screen/new_job//widget/app_bar_new_job.dart';
import 'package:jogja_career/ui/screen/new_job//widget/new_job_body.dart';

class PostJob extends StatefulWidget {
  @override
  _PostJobState createState() => _PostJobState();
}

class _PostJobState extends State<PostJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNewJob(),
      body: BodyNewJob(),
    );
  }
}

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

class UploadJob extends StatefulWidget {
  @override
  _UploadJobState createState() => _UploadJobState();
}

class _UploadJobState extends State<UploadJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarUploadJob(),
      body: BodyUploadJob(),
    );
  }
}
