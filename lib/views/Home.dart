import 'package:guitar_chord_book/models/Tools.dart';
import 'package:flutter/material.dart';
import 'package:guitar_chord_book/widgets/ToolsList.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  List<Tools> tools = [
    Tools(name: 'C', esNotation: "DO"),
    Tools(name: 'D', esNotation: "RE"),
    Tools(name: 'E', esNotation: "MI"),
    Tools(name: 'F', esNotation: "FA"),
    Tools(name: 'G', esNotation: "SOL"),
    Tools(name: 'A', esNotation: "LA"),
    Tools(name: 'B', esNotation: "SI")
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: tools.map((item) => ToolsList(item)).toList(),
    );
  }
}
