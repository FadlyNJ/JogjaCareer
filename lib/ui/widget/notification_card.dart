import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/utils/const.dart';
import 'package:jogja_career/models/notification.dart';
import 'package:jogja_career/ui/screen/notification_detail_screen.dart';

class NotificationCard extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<NotificationCard> {
  bool toggle = true;

  final List<notification> notifikasiList = [
    notification(
        "Fadly Nugraha Jati", "Mobile App Developer", "IMAGE", "1 hari lalu"),
    notification(
        "Fadly Nugraha Jati", "Mobile App Developer", "IMAGE", "1 hari lalu"),
    notification(
        "Fadly Nugraha Jati", "Mobile App Developer", "IMAGE", "1 hari lalu"),
    notification(
        "Fadly Nugraha Jati", "Mobile App Developer", "IMAGE", "1 hari lalu"),
    notification(
        "Fadly Nugraha Jati", "Mobile App Developer", "IMAGE", "1 hari lalu"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: notifikasiList.length,
          itemBuilder: (BuildContext context, int index) =>
              notifikasiCard(context, index)),
    );
  }

  Widget notifikasiCard(BuildContext context, int index) {
    final notifikasi = notifikasiList[index];
    final job = notifikasi.notificationJob;
    final date = notifikasi.notificationDate;
    return new GestureDetector(
      onTap: () {
        print(index);
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return Scaffold(
                body: notifikasiDetail(index, context),
              );
            },
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10, left: 30, right: 10),
              width: 80,
              height: 80,
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
