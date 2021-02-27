import 'package:flutter/material.dart';
import 'CandidateCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(primaryColor: Colors.white),
      home: Home(),
    );
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  Color primary = Color(0xff1a7fc1);
  Color appbar = Color(0xfff2fbff);

  void _addJob(){
    Navigator.of(context).push(MaterialPageRoute<void>(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: _appbarAddJob(),
        body: _cardCandidate(),
      );
    },
  ));
  }

  void _candidateDetails() {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Candidate Details'),
          ),
          body: _cardCandidate(),
        );
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarHome(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Header'),
            ),
            ListTile(
              title: Text('Notification'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Okay'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Yaa'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Mawowoow'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Header'),
            ),
            ListTile(
              title: Text('Notification'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Okay'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Yaa'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Mawowoow'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: _cardCandidate(),
      floatingActionButton: _fabAddJob(),
      bottomNavigationBar: _bottomNavigation(),
    );
  }

  Widget _appBarHome() {
    return PreferredSize(
      preferredSize: Size.fromHeight(140),
      child: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: appbar,
        title: Text('Beranda',
            style: TextStyle(
              fontSize: 25,
            )),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              iconSize: 35,
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
                iconSize: 35,
                icon: const Icon(Icons.notifications_none),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                tooltip: ('Notification'),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _bottomNavigation() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      iconSize: 30,
      backgroundColor: Colors.white,
      selectedItemColor: primary,
      unselectedItemColor: primary,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            tooltip: ('Home'),
            label: ('')),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            activeIcon: Icon(Icons.bookmark),
            tooltip: ('Bookmark'),
            label: ('')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            tooltip: ('Account'),
            label: ('')),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  Widget _cardCandidate() {
    return CandidateCard();
  }

  Widget _appbarAddJob() {
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: appbar,
        title: Text('Post Lowongan',
            style: TextStyle(
              fontSize: 25,
            )),
      ),
    );
  }

  Widget _fabAddJob() {
    return Container(
      margin: const EdgeInsets.only(bottom: 18.0),
      child: new FloatingActionButton(
          child: new Icon(Icons.add),
          tooltip: ('Add Job'),
          backgroundColor: primary,
          onPressed: _addJob),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
