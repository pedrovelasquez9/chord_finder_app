import 'package:chord_finder/models/ChordListArguments.dart';
import 'package:chord_finder/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class CustomSquare extends StatelessWidget {
  final String text;
  CustomSquare(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
            onPressed: () => {
                  Navigator.pushNamed(context, "/details",
                      arguments: ScreenArguments(this.text))
                },
            child: CustomText(this.text, Colors.white, fontSize: 40)));
  }
}
