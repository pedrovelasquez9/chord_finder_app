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
                  height: 84.0,
                  margin: EdgeInsets.only(left: 16, right: 16, bottom: 20),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child:CustomText(
                              widget.item.name.toString()+"  ("+widget.item.esNotation.toString()+")", Colors.white,
                              fontSize: 29)),
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
                    color: Color.fromRGBO(155, 95, 196, 1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(8.0),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end:Alignment.center,
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
                ),
                // Container(
                //   margin: EdgeInsets.symmetric(vertical: 16.0),
                //   alignment: FractionalOffset.centerLeft,
                //   child: Image(
                //     image: AssetImage(
                //         "assets/chords/" + widget.item.name + ".png"),
                //     height: 92.0,
                //     width: 92.0,
                //   ),
                // ),
              ],
            )
          ],
        ))
      ],
    );
  }
}
