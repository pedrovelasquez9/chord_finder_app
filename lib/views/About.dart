import 'package:chord_finder/models/Tools.dart';
import 'package:chord_finder/widgets/CustomAvatar.dart';
import 'package:chord_finder/widgets/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CustomAvatar(90, "./assets/Logo.jpg"),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: CustomText("Pedro Plasencia", Colors.white),
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: _launchYoutubeURL,
                child: Center(
                  child: CustomAvatar(30, "./assets/youtube.png"),
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: _launchIGURL,
                child: Center(
                  child: CustomAvatar(30, "./assets/instagram.png"),
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: _launchFBURL,
                child: Center(
                  child: CustomAvatar(30, "./assets/facebook.png"),
                ),
              )),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Expanded(
                  child: GestureDetector(
                onTap: _launchLKURL,
                child: Center(
                  child: CustomAvatar(30, "./assets/linkedin.png"),
                ),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: _launchGHURL,
                child: Center(
                  child: CustomAvatar(30, "./assets/github.png"),
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}

_launchYoutubeURL() async {
  const url = 'https://www.youtube.com/channel/UCNliuGyPizt7uNcdCrUoduQ';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchIGURL() async {
  const url = 'https://www.instagram.com/programacion.es/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchFBURL() async {
  const url = 'https://www.facebook.com/programacion.en.esp';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchLKURL() async {
  const url = 'https://www.linkedin.com/in/pedroplasencia/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchGHURL() async {
  const url = 'https://github.com/pedrovelasquez9';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
