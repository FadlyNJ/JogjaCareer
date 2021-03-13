import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jogja_career/ui/screen/home/home_screen.dart';
import 'package:jogja_career/ui/screen/new_job/new_job_screen.dart';
import 'package:jogja_career/utils/const.dart';
import 'package:jogja_career/ui/widget/choice_chip.dart';
import 'package:jogja_career/utils/line_dash.dart';

class BodyNewJob extends StatefulWidget {
  @override
  _BodyNewJobState createState() => _BodyNewJobState();
}

class _BodyNewJobState extends State<BodyNewJob> {
  var isClicked = true;
  String _valCategory;
  List _myCategory = [
    "Informasi dan Teknologi",
    "Bisnis dan Marketing",
    "Akuntansi",
    "Keamanan dan Kenyamanan",
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: ListView(
        padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 30),
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 65,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: kWhite,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Post Lowongan',
                          style: TextStyle(
                            color: kPrimaryColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    width: 60,
                    child: LineDash(
                      color: kGray3,
                    ),
                  ),
                  Container(
                    width: 65,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: kGray3,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Ketentuan',
                          style: TextStyle(
                            color: kGray3,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    width: 60,
                    child: LineDash(
                      color: kGray3,
                    ),
                  ),
                  Container(
                    width: 65,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: kGray3,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Selesai',
                          style: TextStyle(
                            color: kGray3,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
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

class BodyJobDetails extends StatefulWidget {
  @override
  _BodyJobDetailsState createState() => _BodyJobDetailsState();
}

class _BodyJobDetailsState extends State<BodyJobDetails> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Padding(
        padding: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 65,
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: kWhite,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Post Lowongan',
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  width: 60,
                  child: LineDash(
                    color: kGray3,
                  ),
                ),
                Container(
                  width: 65,
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: kWhite,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Ketentuan',
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  width: 60,
                  child: LineDash(
                    color: kGray3,
                  ),
                ),
                Container(
                  width: 65,
                  child: Column(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: kGray3,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Selesai',
                        style: TextStyle(
                          color: kGray3,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: kGray4,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  scrollPhysics: BouncingScrollPhysics(),
                  maxLines: null,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    hintStyle: TextStyle(
                      color: kGray3,
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                    hintText:
                        ('Tulis deskripsi pekerjaan, syarat dan ketentuan...'),
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
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
                      'Selesai',
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
      ),
    );
  }

  void onPressed() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) {
        return LoadingUpload();
      },
    ));
  }
}

class BodyLoadingUpload extends StatefulWidget {
  @override
  _BodyLoadingUploadState createState() => _BodyLoadingUploadState();
}

class _BodyLoadingUploadState extends State<BodyLoadingUpload>
    with TickerProviderStateMixin {
  bool _isLoading = false;
  AnimationController animationController;

  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  void initState() {
    animationController =
        AnimationController(duration: new Duration(seconds: 5), vsync: this);
    animationController.repeat();
    super.initState();
    dataLoadFunction();
  }

  dataLoadFunction() async {
    setState(() {
      _isLoading = true;
    });
    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: _isLoading
          ? Scaffold(
              body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SizedBox(
                          height: 200,
                          width: 200,
                          child: CircularProgressIndicator(
                            valueColor: animationController.drive(ColorTween(
                                begin: kGreen, end: Color(0xff0dbea3))),
                            backgroundColor: kLightBlue,
                            strokeWidth: 40,
                          ),
                        ),
                      ),
                      SizedBox(height: 60),
                      Text('Sedang Mengupload Lowongan',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text(
                        'Mohon Tunggu Sebentar',
                        style: TextStyle(color: kGray2, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : Scaffold(
              body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kWhite,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Lowongan Terposting',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.check_circle,
                        size: 300,
                        color: kGreen,
                      ),
                      Text('Lowongan Terposting',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
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
                            onTap: backToHome,
                            child: Center(
                              child: Text(
                                'Kembali ke Beranda',
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
                ),
              ),
            ),
      onWillPop: _onWillPop,
    );
  }

  void backToHome() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Home()),
        (Route<dynamic> route) => false);
  }
}
