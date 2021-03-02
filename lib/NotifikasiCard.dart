import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/constant.dart';
import 'Notifikasi.dart';

class NotificationCard extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<NotificationCard> {
  bool toggle = true;

  final List<Notifikasi> notifikasiList = [
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
    Notifikasi(
        "Salsabila Rahma Wijaya", "UI / UX Design", "IMAGE", "2 hari lalu"),
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

  Widget notifikasiDetail(int index, BuildContext context) {
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
      body: Text('This is Card Number $index'),
    );
  }

  Widget notifikasiCard(BuildContext context, int index) {
    final notifikasi = notifikasiList[index];
    final job = notifikasi.notificationJob;
    final date = notifikasi.notificationDate;
    return new GestureDetector(
      onTap: () {
        print(index);
        Navigator.of(context).push(MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return Scaffold(
              body: notifikasiDetail(index, context),
            );
          },
        ));
      },
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 1,
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
