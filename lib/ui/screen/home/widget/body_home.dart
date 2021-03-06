import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jogja_career/ui/widget/candidate_card.dart';
import 'header_with_search_bar.dart';

class BodyHome extends StatefulWidget {
  @override
  _BodyHomeState createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Widget _body() {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus.unfocus();
      },
      child: Column(
        children: [
          HeaderSearchBar(),
          new Expanded(child: CandidateCard()),
        ],
      ),
    );
  }
}
