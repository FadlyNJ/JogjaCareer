import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/utils/const.dart';
import 'dart:math' as math;

class PostJob extends StatefulWidget {
  @override
  _PostJobState createState() => _PostJobState();
}

class _PostJobState extends State<PostJob> {
  String _valCategory;
  List _myCategory = [
    "Informasi dan Teknologi",
    "Bisnis dan Marketing",
    "Akuntansi",
    "Keamanan dan Kenyamanan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarAddJob(),
      body: _addJobBody(),
    );
  }

  Widget _addJobBody() {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus.unfocus();
      },
      child: ListView(
        padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 40),
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: ('Posisi Yang Dicari'),
                  hintStyle: TextStyle(
                    color: Color(0xffc1cbd6),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Pendidikan Terakhir',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: [
                      MyFilterChip(chipLabel: 'SMA'),
                      MyFilterChip(chipLabel: 'Diploma'),
                      MyFilterChip(chipLabel: 'Sarjana'),
                      MyFilterChip(chipLabel: 'Umum'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Jam Kerja',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: [
                      MyFilterChip(chipLabel: 'Full Time'),
                      MyFilterChip(chipLabel: 'Part Time'),
                      MyFilterChip(chipLabel: 'Internship'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Kota Penempatan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: [
                      MyChoiceChip(chipLabel: 'Yogyakarta'),
                      MyChoiceChip(chipLabel: 'Bantul'),
                      MyChoiceChip(chipLabel: 'Sleman'),
                      MyChoiceChip(chipLabel: 'Kulon Progo'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: kPrimaryColor, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                  hint: Text(
                    "Kategori Pekerjaan",
                    style: TextStyle(color: Colors.black),
                  ),
                  value: _valCategory,
                  icon: Icon(Icons.keyboard_arrow_down),
                  iconSize: 30,
                  items: _myCategory.map((value) {
                    return DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _valCategory = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: ('Gaji'),
                        hintStyle: TextStyle(
                          color: Color(0xffc1cbd6),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: kPrimaryColor, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: kPrimaryColor, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Color(0xffe6ecf4),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: TextButton(
                        onPressed: onPressed,
                        child: Text(
                          'Sembunyikan',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: TextButton(
                  onPressed: onPressed,
                  child: Text(
                    'Selanjutnya',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
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

  void onPressed() {}
}

class MyFilterChip extends StatefulWidget {
  final String chipLabel;

  MyFilterChip({Key key, this.chipLabel}) : super(key: key);

  @override
  _MyFilterChipState createState() => _MyFilterChipState();
}

class _MyFilterChipState extends State<MyFilterChip> {
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

class MyChoiceChip extends StatefulWidget {
  final String chipLabel;

  MyChoiceChip({Key key, this.chipLabel}) : super(key: key);

  @override
  _MyChoiceChipState createState() => _MyChoiceChipState();
}

class _MyChoiceChipState extends State<MyChoiceChip> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
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
