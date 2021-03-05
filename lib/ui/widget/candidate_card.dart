import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jogja_career/utils/const.dart';
import 'package:jogja_career/models/candidate.dart';
import 'package:jogja_career/ui/screen/candidate_detail_screen.dart';

class CandidateCard extends StatefulWidget {
  @override
  _CandidateCardState createState() => _CandidateCardState();
}

class _CandidateCardState extends State<CandidateCard> {
  List<bool> selected = [];

  final List<candidate> candidateList = [
    candidate("Mobile App Developer", "Fadly Nugraha Jati",
        "Java, Dart, Flutter, Kotlin", "Tersedia"),
    candidate("Mobile App Developer", "Fadly Nugraha Jati",
        "Java, Dart, Flutter, Kotlin", "Tersedia"),
    candidate("Mobile App Developer", "Fadly Nugraha Jati",
        "Java, Dart, Flutter, Kotlin", "Tersedia"),
    candidate("Mobile App Developer", "Fadly Nugraha Jati",
        "Java, Dart, Flutter, Kotlin", "Tersedia"),
    candidate("Mobile App Developer", "Fadly Nugraha Jati",
        "Java, Dart, Flutter, Kotlin", "Tersedia"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
        padding: EdgeInsets.only(
            top: kDefaultPadding * 0.75, bottom: kDefaultPadding * 0.75),
        physics: BouncingScrollPhysics(),
        itemCount: candidateList.length,
        itemBuilder: (BuildContext context, int index) {
          return candidateCard(context, index);
        },
      ),
    );
  }

  Widget candidateCard(BuildContext context, int index) {
    final candidate = candidateList[index];
    selected.add(true);
    return new GestureDetector(
      onTap: () {
        print(index);
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return Scaffold(
                body: candidateDetail(index, context),
              );
            },
          ),
        );
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
                height: 118,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: IconButton(
                        color: kPrimaryColor,
                        icon: Icon(
                          selected.elementAt(index)
                              ? Icons.bookmark_outline
                              : Icons.bookmark,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              selected[index] =
                                  selected[index] == false ? true : false;

                              if (selected[index] == false) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  new SnackBar(
                                    content: const Text(
                                        'Bookmark Berhasil Disimpan !'),
                                    action: SnackBarAction(
                                        label: 'DISMISS',
                                        onPressed: ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  new SnackBar(
                                    content: const Text(
                                        'Bookmark Berhasil Dihapus !'),
                                    action: SnackBarAction(
                                        label: 'UNDO',
                                        onPressed: ScaffoldMessenger.of(context)
                                            .hideCurrentSnackBar),
                                  ),
                                );
                              }
                            },
                          );
                        },
                      ),
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
