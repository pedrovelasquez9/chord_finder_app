import 'package:chord_finder/views/About.dart';
import 'package:chord_finder/views/ChordList.dart';
import 'package:chord_finder/views/Info.dart';
import 'package:flutter/material.dart';
import 'package:chord_finder/layout/CustomScaffold.dart';
import 'package:chord_finder/views/Details.dart';
import 'package:chord_finder/views/Home.dart';

void main() => runApp(MaterialApp(routes: {
      "/": (context) => CustomScaffold(
            view: Home(),
            title: "Guitar Chord Finder",
          ),
      "/details": (context) => CustomScaffold(
            view: Details(),
            title: "Detalles",
          ),
      "/chord-list": (context) => CustomScaffold(
            view: ChordList(),
            title: "Variaciones",
          ),
      "/info": (context) => CustomScaffold(
            view: Info(),
            title: "Información",
          ),
      "/about": (context) => CustomScaffold(
            view: About(),
            title: "Acerca del desarrollador",
          )
    }));
