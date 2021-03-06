import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jogja_career/ui/screen/candidate_details/widget/app_bar_candidate_details.dart';
import 'package:jogja_career/ui/screen/candidate_details/widget/body_candidate_details.dart';

class CandidateDetail extends StatefulWidget {
  @override
  _CandidateDetailState createState() => _CandidateDetailState();
}

class _CandidateDetailState extends State<CandidateDetail> {
  @override
  Widget build(BuildContext context) {
    return candidateDetail();
  }

  Widget candidateDetail() {
    return Scaffold(
      appBar: AppBarCandidateDetails(),
      body: BodyCandidateDetails(),
    );
  }

  void onPressed() {}
}
