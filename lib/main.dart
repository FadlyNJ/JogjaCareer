import 'package:flutter/material.dart';
import 'CandidateCard.dart';
import 'constant.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Home(),
    );
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  void _addJob() {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: _appBarAddJob(),
          body: _body(),
        );
      },
    ));
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  void _onPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: kScrimColor.withOpacity(0.4),
      backgroundColor: kBackgroundColor,
      appBar: _appBarHome(),
      drawer: _menuDrawer(),
      endDrawer: _notificationDrawer(),
      body: _body(),
      floatingActionButton: _fabAddJob(),
      bottomNavigationBar: _bottomNavigation(),
    );
  }

  Widget _appBarHome() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: kAppbarColor,
      title: Text('Beranda',
          style: TextStyle(
            fontSize: 25,
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

  Widget _bottomNavigation() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      iconSize: 30,
      backgroundColor: Colors.white,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: kPrimaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            tooltip: ('Home'),
            label: ('Home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            activeIcon: Icon(Icons.bookmark),
            tooltip: ('Bookmark'),
            label: ('Bookmark')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            tooltip: ('Akun'),
            label: ('Account')),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _body() {
    return GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus.unfocus();
        },
        child: SafeArea(
          child: Column(
            children: [
              _headerSearchBar(),
              new Expanded(child: _candidateCard()),
            ],
          ),
        ));
  }

  Widget _candidateCard() {
    return CandidateCard();
  }

  Widget _headerSearchBar() {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      height: size.height * 0.13,
      color: kAppbarColor,
      child: Column(
        children: [
          Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
            new Expanded(
                child: new Container(
              padding: EdgeInsets.only(
                  left: kDefaultPadding, right: kDefaultPadding),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: ('Cari Karyawan'),
                  hintStyle: TextStyle(
                    color: kSearchBarColor,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(Icons.search, color: kSearchBarColor),
                ),
              ),
            )),
            new Wrap(
              children: [
                new MaterialButton(
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: _onPressed,
                  child: Text('Cari'),
                  color: kPrimaryColor,
                )
              ],
            )
          ]),
        ],
      ),
    );
  }

  Widget _appBarAddJob() {
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: kAppbarColor,
        title: Text('Post Lowongan',
            style: TextStyle(
              fontSize: 25,
            )),
        automaticallyImplyLeading: false,
        actions: [
          Transform.rotate(
            angle: 45 * math.pi / 180,
            child: IconButton(
                icon: Icon(Icons.add),
                tooltip: ('Close'),
                onPressed: Navigator.of(context).pop),
          ),
        ],
      ),
    );
  }

  Widget _fabAddJob() {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 0.9),
      child: new FloatingActionButton(
          child: new Icon(Icons.add),
          tooltip: ('Tambah Lowongan'),
          backgroundColor: kPrimaryColor,
          onPressed: _addJob),
    );
  }

  Widget _menuDrawer() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(60), bottomRight: Radius.circular(60)),
      child: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: kDefaultPadding,
                  left: kDefaultPadding,
                  right: kDefaultPadding),
              child: Row(children: <Widget>[
                Text('Menu', textAlign: TextAlign.start),
                Spacer(),
                Transform.rotate(
                  angle: 45 * math.pi / 180,
                  child: IconButton(
                      icon: Icon(Icons.add),
                      iconSize: 35,
                      tooltip: ('Tutup'),
                      onPressed: _closeDrawer),
                ),
              ]),
            ),
            ListTile(
              title: Text('Kebijakan'),
              onTap: () {
                _closeDrawer();
              },
            ),
            ListTile(
              title: Text('Pengaturan'),
              onTap: () {
                _closeDrawer();
              },
            ),
            ListTile(
              title: Text('Update Aplikasi'),
              onTap: () {
                _closeDrawer();
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  Widget _notificationDrawer() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
      child: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: kDefaultPadding, left: kDefaultPadding),
              child: Row(children: <Widget>[
                Text(
                  'Notifikasi',
                  textAlign: TextAlign.start,
                ),
                Spacer(),
                Transform.rotate(
                  angle: 45 * math.pi / 180,
                  child: IconButton(
                      icon: Icon(Icons.add),
                      iconSize: 35,
                      tooltip: ('Tutup'),
                      onPressed: _closeDrawer),
                ),
              ]),
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Belum ada Notifikasi',
                  textAlign: TextAlign.start,
                )),
            ListTile(
              title: Text('Notification'),
              onTap: () {
                _closeDrawer();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
