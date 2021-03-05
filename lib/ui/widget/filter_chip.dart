import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jogja_career/utils/const.dart';

class CustomFilterChip extends StatefulWidget {
  final String chipLabel;

  CustomFilterChip({Key key, this.chipLabel}) : super(key: key);

  @override
  _CustomFilterChipState createState() => _CustomFilterChipState();
}

class _CustomFilterChipState extends State<CustomFilterChip> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Container(
        padding: EdgeInsets.all(10),
        child: Text(widget.chipLabel),
      ),
      shadowColor: Colors.transparent,
      selectedShadowColor: Colors.transparent,
      labelStyle: TextStyle(
          color: _isSelected ? Colors.white : Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      side: BorderSide(
        color: kPrimaryColor,
        width: 2,
      ),
      selectedColor: kPrimaryColor,
      backgroundColor: Colors.white,
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
    );
  }
}
