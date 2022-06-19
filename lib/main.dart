import 'package:guitar_chord_book/views/About.dart';
import 'package:guitar_chord_book/views/ChordList.dart';
import 'package:guitar_chord_book/views/Info.dart';
import 'package:flutter/material.dart';
import 'package:guitar_chord_book/layout/CustomScaffold.dart';
import 'package:guitar_chord_book/views/Details.dart';
import 'package:guitar_chord_book/views/Home.dart';

void main() => runApp(MaterialApp(routes: {
      "/": (context) => CustomScaffold(
            view: Home(),
            title: "Guitar Chord Book",
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
