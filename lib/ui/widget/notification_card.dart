import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/ui/screen/candidate_details/candidate_detail_screen.dart';
import 'package:jogja_career/utils/const.dart';
import 'package:jogja_career/models/notification.dart';

class NotificationCard extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<NotificationCard> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: mockNotification.length,
          itemBuilder: (BuildContext context, int index) =>
              notifikasiCard(context, index)),
    );
  }

  Widget notifikasiCard(BuildContext context, int index) {
    final notifikasi = mockNotification[index];
    final job = notifikasi.notificationJob;
    final date = notifikasi.notificationDate;
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      child: InkWell(
        highlightColor: kPrimaryColor,
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  body: CandidateDetail(),
                );
              },
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 10),
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
              width: 160,
              margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    notifikasi.notificationName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Telah melamar pada posisi $job.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text('$date'),
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
