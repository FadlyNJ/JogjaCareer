import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jogja_career/utils/const.dart';

class HeaderCandidateDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _headerCandidateDetails(context);
  }

  Widget _headerCandidateDetails(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white, width: 1.5)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                  'https://www.petanikode.com/img/flutter/flutter-sqr.png'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Fadly Nugraha Jati',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'Mobile App Developer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Yogyakarta',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 8, bottom: 8, right: 12, left: 12),
                decoration: BoxDecoration(
                  color: Color(0xff155179),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Text(
                  'S1',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 8, bottom: 8, right: 12, left: 12),
                decoration: BoxDecoration(
                  color: Color(0xff155179),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Text(
                  'Tersedia',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
