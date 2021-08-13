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
    return Container(
        height: 120.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 10.0,
        ),
        child: new Stack(
          children: [
            Container(
              height: 124.0,
              margin: new EdgeInsets.only(left: 46.0),
              child: Row(children: [
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 70, top: 45),
                        child: CustomText(
                            widget.item.esNotation.toString(), Colors.white,
                            fontSize: 29)),
                  ],
                ),
                Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 70, top: 35),
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
                                arguments: ScreenArguments(widget.item.name));
                          }))
                ])
              ]),
              decoration: new BoxDecoration(
                color: new Color(0xFF333366),
                shape: BoxShape.rectangle,
                borderRadius: new BorderRadius.circular(8.0),
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
              ),
            ),
            Container(
              margin: new EdgeInsets.symmetric(vertical: 16.0),
              alignment: FractionalOffset.centerLeft,
              child: new Image(
                image: new AssetImage(
                    "assets/chords/" + widget.item.name + ".png"),
                height: 92.0,
                width: 92.0,
              ),
            ),
          ],
        ));
  }
}
