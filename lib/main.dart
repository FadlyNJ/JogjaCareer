import 'package:flutter/material.dart';
import 'NotifikasiCard.dart';
import 'CandidateCard.dart';
import 'constant.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: Home(),
    );
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      child: Column(
        children: [
          _headerSearchBar(),
          new Expanded(child: _candidateCard()),
        ],
      ),
    );
  }

  Widget _headerSearchBar() {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      height: size.height * 0.13,
      color: kAppbarColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Expanded(
            child: new Container(
              padding: EdgeInsets.only(right: kDefaultPadding * 0.5),
              child: Container(
                padding: EdgeInsets.only(left: kDefaultPadding),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
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
              ),
            ),
          ),
          new Wrap(
            children: [
              new MaterialButton(
                textColor: Colors.white,
                color: kPrimaryColor,
                minWidth: 0,
                height: 45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('Cari',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: _onPressed,
              ),
            ],
          ),
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
        automaticallyImplyLeading: false,
        title: Text('Post Lowongan',
            style: TextStyle(
              fontSize: 25,
            )),
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
                  Transform.rotate(
                    angle: 45 * math.pi / 180,
                    child: IconButton(
                        icon: Icon(Icons.add),
                        iconSize: 35,
                        tooltip: ('Tutup'),
                        onPressed: _closeDrawer),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Kebijakan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                _closeDrawer();
              },
            ),
            Divider(thickness: 1),
            ListTile(
              title: Text(
                'Pengaturan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                _closeDrawer();
              },
            ),
            Divider(thickness: 1),
            ListTile(
              title: Text(
                'Update Aplikasi',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                _closeDrawer();
              },
            ),
            Divider(thickness: 1),
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
                  Transform.rotate(
                    angle: 45 * math.pi / 180,
                    child: IconButton(
                        icon: Icon(Icons.add),
                        iconSize: 35,
                        tooltip: ('Tutup'),
                        onPressed: _closeDrawer),
                  ),
                ],
              ),
            ),
            Expanded(child: _notificationCard()),
          ],
        ),
      ),
    );
  }

  Widget _candidateCard() {
    return CandidateCard();
  }

  Widget _notificationCard() {
    return NotificationCard();
  }

  int _currentIndex = 0;

  void _addJob() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: _appBarAddJob(),
            body: _body(),
          );
        },
      ),
    );
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  void _onPressed() {}
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
