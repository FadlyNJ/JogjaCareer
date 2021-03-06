import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/utils/const.dart';

class AppBarHome extends StatefulWidget with PreferredSizeWidget {
  @override
  _AppBarHomeState createState() => _AppBarHomeState();

  @override
  Size get preferredSize => Size.fromHeight(60);
}

class _AppBarHomeState extends State<AppBarHome> {
  @override
  Widget build(BuildContext context) {
    return _appBarHome();
  }

  Widget _appBarHome() {
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
