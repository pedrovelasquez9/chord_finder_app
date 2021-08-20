import 'package:chord_finder/models/ChordListArguments.dart';
import 'package:chord_finder/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:chord_finder/widgets/CustomCard.dart';
import 'package:chord_finder/models/Tools.dart';

class ToolsList extends StatefulWidget {
  late Tools item;
  ToolsList(Tools item) {
    this.item = item;
  }
  @override
  _ToolsListState createState() => _ToolsListState();
}

class _ToolsListState extends State<ToolsList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  height: 124.0,
                  margin: EdgeInsets.only(left: 46.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(flex: 1, child: SizedBox()),
                        Expanded(
                          flex: 2,
                          child: CustomText(
                              widget.item.esNotation.toString(), Colors.white,
                              fontSize: 29),
                        ),
                        Expanded(
                            flex: 1,
                            child: TextButton.icon(
                                icon: Icon(
                                  Icons.fast_forward,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                label: Text(
                                  '',
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/chord-list",
                                      arguments:
                                          ScreenArguments(widget.item.name));
                                }))
                      ]),
                  decoration: BoxDecoration(
                    color: Color(0xFF333366),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16.0),
                  alignment: FractionalOffset.centerLeft,
                  child: Image(
                    image: AssetImage(
                        "assets/chords/" + widget.item.name + ".png"),
                    height: 92.0,
                    width: 92.0,
                  ),
                ),
              ],
            )
          ],
        ))
      ],
    );
  }
}
