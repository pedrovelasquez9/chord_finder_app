import 'dart:ui';

import 'package:chord_finder/models/ChordListArguments.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:chord_finder/api/HttpHelpers.dart';
import 'package:chord_finder/widgets/CustomText.dart';
import 'package:chord_finder/widgets/CustomTitle.dart';
import 'package:chord_finder/layout/CustomLoading.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var routeData;
  var chord;
  bool loading = true;
  HttpHelpers apiHelper = new HttpHelpers();

  Future getDetails(chordName) async {
    String data = await apiHelper.getChordImage(chordName);
    //Se valida que el widget esté montado para evitar error al mantener
    //la suscripción del setState en el evento dispose
    final String rawSvg = data;
    print(rawSvg);
    final SvgParser parser = SvgParser();
    try {
      parser.parse(data, warningsAsErrors: true);
      print('SVG is supported');
    } catch (e) {
      print('SVG contains unsupported features');
    }
    //final DrawableRoot svgRoot = await svg.fromSvgString(rawSvg, rawSvg);
    //final Picture picture = svgRoot.toPicture();
    if (this.mounted) {
      setState(() {
        chord = rawSvg;
        loading = false;
      });
    }
  }

  @override
  void initState() {
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
    setState(() {
      routeData = ModalRoute.of(context)!.settings.arguments;
    });
    return loading
        ? CustomLoading()
        : Container(
            height: 512,
            width: 512,
            color: Colors.transparent,
            child: RotatedBox(
                quarterTurns: 1,
                child: FractionallySizedBox(
                  heightFactor: 1,
                  child: SvgPicture.string(
                    '$chord',
                    width: (0.1),
                    height: (0.1),
                  ),
                )));
  }
}
