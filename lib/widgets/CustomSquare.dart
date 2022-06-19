import 'package:guitar_chord_book/models/ChordListArguments.dart';
import 'package:guitar_chord_book/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class CustomSquare extends StatelessWidget {
  final String text;
  CustomSquare(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(155, 95, 196, 1)),
          onPressed: () => {
                Navigator.pushNamed(context, "/details",
                    arguments: ScreenArguments(this.text))
              },
          child: CustomText(this.text, Colors.white, fontSize: 40)),
      decoration: BoxDecoration(
        color: Color.fromRGBO(155, 95, 196, 1),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.center,
            colors: [
              Color.fromRGBO(140, 86, 176, 1),
              Color.fromRGBO(166, 102, 210, 1)
            ]),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(132, 81, 167, 1),
            blurRadius: 60.0,
            offset: Offset(20, 20),
          ),
          BoxShadow(
            color: Color.fromRGBO(178, 109, 225, 1),
            blurRadius: 60.0,
            offset: Offset(-20, -20),
          ),
        ],
      ),
    );
  }
}
