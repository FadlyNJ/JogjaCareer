import 'package:flutter/material.dart';
import 'Candidate.dart';

class CandidateCard extends StatelessWidget {
  Color primary = Color(0xff1a7fc1);
  Color appbar = Color(0xfff2fbff);

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
          physics: BouncingScrollPhysics(),
          itemCount: candidateList.length,
          itemBuilder: (BuildContext context, int index) =>
              candidateCard(context, index)),
    );
  }

  Widget candidateDetail(int index) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Candidate Details'),
        actions: [
          IconButton(
              icon: Icon(Icons.share_outlined),
              onPressed: shareCandidate,
              tooltip: ('Share')),
        ],
      ),
      body: Text('sddasdsasd is $index'),
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
              body: candidateDetail(index),
            );
          },
        ));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(width: 1.5, color: primary),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
