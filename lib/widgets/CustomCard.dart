import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:guitar_chord_book/models/Tools.dart';
import 'package:guitar_chord_book/widgets/CustomAvatar.dart';
import 'package:guitar_chord_book/widgets/CustomDeleteBtn.dart';
import 'package:guitar_chord_book/widgets/CustomText.dart';

class CustomCard extends StatelessWidget {
  final Tools tool;
  final Function delete;
  CustomCard({required this.tool, required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomAvatar(30.0, "assets/Logo.png"),
                SizedBox(width: 10.0),
                CustomText(tool.name, Colors.black),
                SizedBox(width: 10.0),
                CustomDeleteBtn(delete)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                    color: Colors.blue,
                    icon: Icon(
                      Icons.zoom_in,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Detalles',
                      semanticsLabel: "Detalles",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/details",
                          arguments: {"techName": tool.name});
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
