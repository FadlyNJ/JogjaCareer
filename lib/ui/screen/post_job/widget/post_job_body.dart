import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/utils/const.dart';
import 'package:jogja_career/ui/widget/filter_chip.dart';
import 'package:jogja_career/ui/widget/choice_chip.dart';

class BodyPostJob extends StatefulWidget with PreferredSizeWidget {
  @override
  _BodyPostJobState createState() => _BodyPostJobState();

  @override
  Size get preferredSize => Size.fromHeight(60);
}

class _BodyPostJobState extends State<BodyPostJob> {
  @override
  Widget build(BuildContext context) {
    return _addJobBody();
  }

  var isClicked = true;
  String _valCategory;
  List _myCategory = [
    "Informasi dan Teknologi",
    "Bisnis dan Marketing",
    "Akuntansi",
    "Keamanan dan Kenyamanan",
  ];

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
                      CustomFilterChip(chipLabel: 'SMA'),
                      CustomFilterChip(chipLabel: 'Diploma'),
                      CustomFilterChip(chipLabel: 'Sarjana'),
                      CustomFilterChip(chipLabel: 'Umum'),
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
                      CustomFilterChip(chipLabel: 'Full Time'),
                      CustomFilterChip(chipLabel: 'Part Time'),
                      CustomFilterChip(chipLabel: 'Internship'),
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
                      CustomChoiceChip(chipLabel: 'Yogyakarta'),
                      CustomChoiceChip(chipLabel: 'Bantul'),
                      CustomChoiceChip(chipLabel: 'Sleman'),
                      CustomChoiceChip(chipLabel: 'Kulon Progo'),
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
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: isClicked ? Color(0xffe6ecf4) : kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: TextButton(
                        onPressed: () => setState(() => isClicked = !isClicked),
                        child: Text(
                          isClicked ? 'Sembunyikan' : 'Perlihatkan',
                          style: TextStyle(
                            color: isClicked ? Colors.black : Colors.white,
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

  void onPressed() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBar(
              title: Text(
                'Ketentuan',
                style: TextStyle(fontSize: 25),
              ),
              backgroundColor: kLightBlue,
              elevation: 0,
              centerTitle: true,
            ),
          ),
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Image.network(
                  'https://www.petanikode.com/img/flutter/flutter-sqr.png'),
              Image.network(
                  'https://www.petanikode.com/img/flutter/flutter-sqr.png'),
              Image.network(
                  'https://www.petanikode.com/img/flutter/flutter-sqr.png'),
              Image.network(
                  'https://www.petanikode.com/img/flutter/flutter-sqr.png'),
              Image.network(
                  'https://www.petanikode.com/img/flutter/flutter-sqr.png'),
            ],
          ),
        );
      },
    ));
  }
}
