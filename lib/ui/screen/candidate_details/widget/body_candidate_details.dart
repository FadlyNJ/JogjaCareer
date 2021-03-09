import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jogja_career/ui/screen/candidate_details/widget/header_with_candidate_details.dart';
import 'package:jogja_career/utils/const.dart';

class BodyCandidateDetails extends StatefulWidget {
  @override
  _BodyCandidateDetailsState createState() => _BodyCandidateDetailsState();
}

class _BodyCandidateDetailsState extends State<BodyCandidateDetails> {
  @override
  Widget build(BuildContext context) {
    return bodyCandidateDetail();
  }

  Widget bodyCandidateDetail() {
    return Column(
      children: [
        HeaderCandidateDetails(),
        Expanded(
          child: ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 20),
            children: [
              Container(
                width: double.infinity,
                color: kGray4,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bio',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Mobile App Developer with High Passion, Dedication and Skill set.',
                      style: TextStyle(fontSize: 16, color: kBlack),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                color: kGray4,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Skill',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Flutter, Dart, Java, Problem Solving, Object Oriented Programming, Agile Development, Brainstorming',
                      style: TextStyle(fontSize: 16, color: kBlack),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                color: kGray4,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pengalaman',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    SizedBox(height: 16),
                    pengalamanCard(),
                    SizedBox(height: 10),
                    Divider(
                      height: 10,
                      color: Colors.white,
                      thickness: 2,
                    ),
                    SizedBox(height: 10),
                    pengalamanCard(),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                color: kGray4,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Curriculum Vitae',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 240,
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.insert_drive_file,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  'CV-Fadly Nugraha Jati',
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(width: 1.5, color: kPrimaryColor),
                            ),
                            child: TextButton(
                              onPressed: onPressed,
                              child: Text(
                                'Download File',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget pengalamanCard() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Mulai',
              style: TextStyle(color: kBlack),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(left: 10, top: 8, bottom: 8, right: 40),
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(8)),
              child: Text('08/2020'),
            ),
            SizedBox(height: 10),
            Text(
              'Selesai',
              style: TextStyle(color: kBlack),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, top: 8, bottom: 8, right: 40),
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(8)),
              child: Text('Sekarang'),
            ),
          ],
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Jabatan',
                style: TextStyle(color: kBlack),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                    color: kWhite, borderRadius: BorderRadius.circular(8)),
                child: Text('Mobile App Developer'),
              ),
              SizedBox(height: 10),
              Text(
                'Tempat Kerja',
                style: TextStyle(color: kBlack),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                    color: kWhite, borderRadius: BorderRadius.circular(8)),
                child: Text('Paylabs'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Deskripsi Pekerjaan',
                style: TextStyle(
                  color: kBlack,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                    color: kWhite, borderRadius: BorderRadius.circular(8)),
                child: Expanded(
                  child: Text(
                    '- Collaborate with Many Developing',
                    maxLines: 20,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void onPressed() {}
}
