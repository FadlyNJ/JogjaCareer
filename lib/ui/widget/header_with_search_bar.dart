import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jogja_career/utils/const.dart';

class HeaderSearchBar extends StatefulWidget {
  @override
  _HeaderSearchBarState createState() => _HeaderSearchBarState();
}

class _HeaderSearchBarState extends State<HeaderSearchBar> {
  @override
  Widget build(BuildContext context) {
    return _headerSearchBar();
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

  void _onPressed() {}
}
