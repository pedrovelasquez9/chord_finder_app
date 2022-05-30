import 'dart:ui';

import 'package:chord_finder/models/ChordListArguments.dart';
import 'package:chord_finder/widgets/CustomSquare.dart';
import 'package:flutter/material.dart';
import 'package:chord_finder/api/HttpHelpers.dart';
import 'package:chord_finder/layout/CustomLoading.dart';

class ChordList extends StatefulWidget {
  const ChordList({Key? key}) : super(key: key);
  @override
  _ChordListState createState() => _ChordListState();
}

class _ChordListState extends State<ChordList> {
  List chordsData = [];
  bool loading = true;
  var routeData;
  HttpHelpers apiHelper = new HttpHelpers();

  Future getDetails(param) async {
    List data = await apiHelper.getData('chord=' + param);
    if (this.mounted) {
      setState(() {
        chordsData = data;
        loading = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Se usa el future para acceder al context dentro del init state
    Future.delayed(Duration.zero, () {
      setState(() {
        routeData =
            ModalRoute.of(context)?.settings.arguments as ScreenArguments;
      });
      getDetails(routeData?.chordName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? CustomLoading()
        : GridView.count(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            crossAxisCount: 2,
            children: chordsData.map((item) => CustomSquare(item)).toList());
  }
}
