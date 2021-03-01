import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/constant.dart';
import 'Candidate.dart';

class CandidateCard extends StatelessWidget {
  final List<Candidate> candidateList = [
    Candidate(
        Icon(Icons.account_box),
        "UI / UX Design",
        "Salsabila Rahma Wijaya",
        "Design Thinking, Wireframing, Layouting",
        "Tersedia"),
    Candidate(
        Icon(Icons.account_box),
        "UI / UX Design",
        "Salsabila Rahma Wijaya",
        "Design Thinking, Wireframing, Layouting",
        "Tersedia"),
    Candidate(
        Icon(Icons.account_box),
        "UI / UX Design",
        "Salsabila Rahma Wijaya",
        "Design Thinking, Wireframing, Layouting",
        "Tersedia"),
    Candidate(
        Icon(Icons.account_box),
        "UI / UX Design",
        "Salsabila Rahma Wijaya",
        "Design Thinking, Wireframing, Layouting",
        "Tersedia"),
    Candidate(
        Icon(Icons.account_box),
        "UI / UX Design",
        "Salsabila Rahma Wijaya",
        "Design Thinking, Wireframing, Layouting",
        "Tersedia"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          padding: EdgeInsets.only(top: 15),
          physics: BouncingScrollPhysics(),
          itemCount: candidateList.length,
          itemBuilder: (BuildContext context, int index) =>
              candidateCard(context, index)),
    );
  }

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
      body: Text('This is $index'),
    );
  }

  void shareCandidate() {}

  Widget candidateCard(BuildContext context, int index) {
    final candidate = candidateList[index];
    return new GestureDetector(
      onTap: () {
        print(index);
        Navigator.of(context).push(MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return Scaffold(
              body: candidateDetail(index, context),
            );
          },
        ));
      },
      child: Container(
        padding: const EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            bottom: kDefaultPadding * 0.25,
            top: kDefaultPadding * 0.25),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(width: 1.5, color: kPrimaryColor),
          ),
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding * 0.8),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                  child: Row(children: <Widget>[
                    Text(
                      candidate.candidateName,
                      style: new TextStyle(fontSize: 30.0),
                    ),
                    Spacer(),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 80.0),
                  child: Row(children: <Widget>[
                    Text(candidate.candidateStatus),
                    Spacer(),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
                  child: Row(children: <Widget>[
                    Text(candidate.candidateJob),
                    Spacer(),
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    children: <Widget>[
                      Text(candidate.candidateSkills),
                      Spacer(),
                      candidate.candidateImage,
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
