import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/ui/screen/post_job/job_details_screen.dart';
import 'package:jogja_career/utils/const.dart';
import 'package:jogja_career/ui/widget/choice_chip.dart';

class BodyPostJob extends StatefulWidget {
  @override
  _BodyPostJobState createState() => _BodyPostJobState();
}

class _BodyPostJobState extends State<BodyPostJob> {
  @override
  Widget build(BuildContext context) {
    return _postJobBody();
  }

  var isClicked = true;
  String _valCategory;
  List _myCategory = [
    "Informasi dan Teknologi",
    "Bisnis dan Marketing",
    "Akuntansi",
    "Keamanan dan Kenyamanan",
  ];

  Widget _postJobBody() {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus.unfocus();
      },
      child: ListView(
        padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 30),
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
                      CustomChoiceChip(chipLabel: 'SMA'),
                      CustomChoiceChip(chipLabel: 'Diploma'),
                      CustomChoiceChip(chipLabel: 'Sarjana'),
                      CustomChoiceChip(chipLabel: 'Umum'),
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
                      CustomChoiceChip(chipLabel: 'Full Time'),
                      CustomChoiceChip(chipLabel: 'Part Time'),
                      CustomChoiceChip(chipLabel: 'Internship'),
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
                  SizedBox(width: 10),
                  Flexible(
                    child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Material(
                          color: isClicked ? Color(0xffe6ecf4) : kPrimaryColor,
                          borderRadius: BorderRadius.circular(8),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(8),
                            onTap: () => setState(() => isClicked = !isClicked),
                            child: Center(
                              child: Text(
                                isClicked ? 'Sembunyikan' : 'Perlihatkan',
                                style: TextStyle(
                                    color:
                                        isClicked ? Colors.black : Colors.white,
                                    fontSize: 16,
                                    fontWeight:
                                        isClicked ? null : FontWeight.bold),
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Material(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: onPressed,
                    child: Center(
                      child: Text(
                        'Selanjutnya',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
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
        return DetailsJob();
      },
    ));
  }
}
