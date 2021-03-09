import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jogja_career/utils/const.dart';

import 'package:jogja_career/ui/widget/notification_card.dart';

class NotificationDrawer extends StatefulWidget {
  @override
  _NotificationDrawerState createState() => _NotificationDrawerState();
}

class _NotificationDrawerState extends State<NotificationDrawer> {
  @override
  Widget build(BuildContext context) {
    return _notificationDrawer();
  }

  Widget _notificationDrawer() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
      child: Drawer(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: kDefaultPadding * 2,
                  left: kDefaultPadding,
                  bottom: kDefaultPadding),
              child: Row(
                children: <Widget>[
                  Text(
                    'Notifikasi',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Spacer(),
                  IconButton(
                      icon: Icon(Icons.clear),
                      iconSize: 30,
                      tooltip: ('Tutup'),
                      onPressed: _closeDrawer),
                ],
              ),
            ),
            Expanded(child: NotificationCard()),
          ],
        ),
      ),
    );
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }
}
