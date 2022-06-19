import 'package:guitar_chord_book/widgets/CustomTabs.dart';
import 'package:flutter/material.dart';
import 'package:guitar_chord_book/widgets/ToolsList.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 1000,
          child: CustomTabs(),
        )
      ],
    );
  }
}
