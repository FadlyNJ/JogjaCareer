import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/constant.dart';
import 'Candidate.dart';

class CandidateCard extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<CandidateCard> {
  bool toggle = true;

  final List<Candidate> candidateList = [
    Candidate("UI / UX Design", "Salsabila Rahma Wijaya",
        "Design Thinking, Wireframing, Layouting", "Tersedia"),
    Candidate("UI / UX Design", "Salsabila Rahma Wijaya",
        "Design Thinking, Wireframing, Layouting", "Tersedia"),
    Candidate("UI / UX Design", "Salsabila Rahma Wijaya",
        "Design Thinking, Wireframing, Layouting", "Tersedia"),
    Candidate("UI / UX Design", "Salsabila Rahma Wijaya",
        "Design Thinking, Wireframing, Layouting", "Tersedia"),
    Candidate("UI / UX Design", "Salsabila Rahma Wijaya",
        "Design Thinking, Wireframing, Layouting", "Tersedia"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          padding: EdgeInsets.only(top: kDefaultPadding * 0.75),
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

        ///
        /// west part of welsh
        /// it's fucking huge there's a really
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
      body: Text('This is Card Number $index'),
    );
  }

  void _showToast(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Kamu Berhasil Menyimpan !'),
        action: SnackBarAction(
            label: 'DISMISS',
            textColor: kPrimaryColor,
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            }),
      ),
    );
  }

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
        height: 160,
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(),
              Container(
                margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: kPrimaryColor, width: 1.5)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                      'https://www.petanikode.com/img/flutter/flutter-sqr.png'),
                ),
              ),
              Container(
                width: 140,
                height: 110,
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      candidate.candidateName,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      candidate.candidateJob,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Text(candidate.candidateSkills,
                        style:
                            TextStyle(fontSize: 12, color: Color(0xffc1cbd6)),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2),
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 108,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: IconButton(
                          icon: toggle
                              ? Icon(
                                  Icons.bookmark_outline,
                                  color: kPrimaryColor,
                                )
                              : Icon(
                                  Icons.bookmark,
                                  color: kPrimaryColor,
                                ),
                          onPressed: () {
                            setState(() {
                              if (!(toggle = !toggle)) {
                                _showToast(context);
                              }
                            });
                          }),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          candidate.candidateStatus,
                          style: TextStyle(color: Color(0xFF9fa5ab)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
