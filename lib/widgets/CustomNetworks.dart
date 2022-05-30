import 'package:chord_finder/widgets/CustomAvatar.dart';
import 'package:chord_finder/widgets/CustomText.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class CustomNetwork extends StatelessWidget {
  final String avatarImageURL;
  final String networkName;
  final String networkURL;
  CustomNetwork(this.avatarImageURL, this.networkName, this.networkURL);

  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.only(left: 15, bottom: 15),
        child: GestureDetector(
          onTap: () => _launchURL(this.networkURL),
          child: Center(
            child: CustomAvatar(25, this.avatarImageURL),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 15, bottom: 15),
        child: CustomText(
          this.networkName,
          Color.fromRGBO(255, 255, 255, 1),
          fontSize: 16,
        ),
      ),
    ]);
  }
}

_launchURL(String networkURL) async {
  if (await canLaunch(networkURL)) {
    await launch(networkURL);
  } else {
    throw 'Could not launch $networkURL';
  }
}
