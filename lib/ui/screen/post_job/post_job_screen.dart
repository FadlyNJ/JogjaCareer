import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/ui/screen/post_job/widget/app_bar_post_job.dart';
import 'package:jogja_career/ui/screen/post_job/widget/post_job_body.dart';

class PostJob extends StatefulWidget {
  @override
  _PostJobState createState() => _PostJobState();
}

class _PostJobState extends State<PostJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPostJob(),
      body: BodyPostJob(),
    );
  }
}
