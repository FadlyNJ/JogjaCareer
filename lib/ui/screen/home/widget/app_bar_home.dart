import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/utils/const.dart';

class AppBarHome extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: kLightBlue,
      title: Text('Beranda',
          style: Theme.of(context).textTheme.headline5.copyWith(
                fontWeight: FontWeight.bold,
              )),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: ('Menu'),
          );
        },
      ),
      actions: [
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.notifications_none),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              tooltip: ('Notifikasi'),
            );
          },
        ),
      ],
    );
  }
}
