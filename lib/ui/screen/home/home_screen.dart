import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/utils/const.dart';
import 'package:jogja_career/ui/screen/home/widget/app_bar_home.dart';
import 'package:jogja_career/ui/screen/home/widget/body_home.dart';
import 'package:jogja_career/ui/widget/bottom_navigation_bar.dart';
import 'package:jogja_career/ui/widget/fab_post_job.dart';
import 'package:jogja_career/ui/widget/menu_drawer.dart';
import 'package:jogja_career/ui/widget/notification_drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBarHome(),
      drawer: MenuDrawer(),
      endDrawer: NotificationDrawer(),
      body: BodyHome(),
      floatingActionButton: FABPostJob(),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
