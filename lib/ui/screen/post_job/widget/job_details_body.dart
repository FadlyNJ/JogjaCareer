import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jogja_career/utils/const.dart';
import 'package:jogja_career/utils/line_dash.dart';

class BodyJobDetails extends StatefulWidget {
  @override
  _BodyJobDetailsState createState() => _BodyJobDetailsState();
}

class _BodyJobDetailsState extends State<BodyJobDetails> {
  @override
  Widget build(BuildContext context) {
    return bodyJobDetails();
  }

  Widget bodyJobDetails() {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus.unfocus();
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
                  padding: EdgeInsets.only(top: 20),
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
                  padding: EdgeInsets.only(top: 20),
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
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: kGray4,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  maxLines: 20,
                  decoration: InputDecoration(
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
    Navigator.of(context).pop();
  }
}
