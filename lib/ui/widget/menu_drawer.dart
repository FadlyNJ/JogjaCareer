import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/utils/const.dart';

class MenuDrawer extends StatefulWidget {
  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return _menuDrawer();
  }

  Widget _menuDrawer() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(60), bottomRight: Radius.circular(60)),
      child: Drawer(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: kDefaultPadding,
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding),
              child: Row(
                children: <Widget>[
                  Text(
                    'Menu',
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
            InkWell(
              highlightColor: kLightBlue,
              onTap: () {
                _closeDrawer();
              },
              child: ListTile(
                title: Text(
                  'Kebijakan',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Divider(thickness: 1),
            InkWell(
              highlightColor: kLightBlue,
              onTap: () {
                _closeDrawer();
              },
              child: ListTile(
                title: Text(
                  'Pengaturan',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Divider(thickness: 1),
            InkWell(
              highlightColor: kLightBlue,
              onTap: () {
                _closeDrawer();
              },
              child: ListTile(
                title: Text(
                  'Update Aplikasi',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Divider(thickness: 1),
          ],
        ),
      ),
    );
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }
}
