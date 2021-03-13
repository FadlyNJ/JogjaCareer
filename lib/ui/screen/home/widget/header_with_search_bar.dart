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
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      color: kLightBlue,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                isDense: true,
                contentPadding: EdgeInsets.only(left: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                hintText: ('Cari Karyawan'),
                hintStyle: TextStyle(
                  color: kSearchBarColor,
                ),
                suffixIcon: Icon(Icons.search, color: kSearchBarColor),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 1,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              color: kPrimaryColor,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: _onPressed,
                child: Container(
                  height: 46,
                  alignment: Alignment.center,
                  child: Text(
                    'Cari',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kWhite,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onPressed() {}
}
