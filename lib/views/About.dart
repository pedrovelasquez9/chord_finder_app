import 'package:guitar_chord_book/constants/NetworkConstants.dart';
import 'package:guitar_chord_book/widgets/CustomAvatar.dart';
import 'package:guitar_chord_book/widgets/CustomNetworks.dart';
import 'package:guitar_chord_book/widgets/CustomText.dart';
import 'package:guitar_chord_book/widgets/CustomTitle.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("./assets/wave.png"),
        alignment: Alignment.topCenter,
      )),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                child: CustomTitle("Programación en español"),
              ),
            ],
          ),
          Center(
            child: CustomAvatar(80, "./assets/Logo.png"),
          ),
          SizedBox(
            height: 30,
          ),
          // Text("Aplicación desarrollada con el fin de tener un primer contacto con Flutter y rediseñada/mejorada en directo por Twitch junto a la comunidad de Programación en español"),
          Center(
            child: CustomText(
              "Aplicación desarrollada con el fin de tener un primer contacto con Flutter y rediseñada/mejorada en directo por Twitch junto a la comunidad de Programación en español",
              Color.fromRGBO(255, 255, 255, 1),
              fontSize: 15,
              alignment: TextAlign.center,
            ),
          ),
          SizedBox(height: 30),
          CustomNetwork(
            NetworksInfo.avatarImageURLYT,
            NetworksInfo.networkNameYT,
            NetworksInfo.networkURL,
          ),
          CustomNetwork(
            NetworksInfo.avatarImageURLIG,
            NetworksInfo.networkNameIG,
            NetworksInfo.networkIG,
          ),
          CustomNetwork(
            NetworksInfo.avatarImageURLFB,
            NetworksInfo.networkNameFB,
            NetworksInfo.networkFB,
          ),
          CustomNetwork(
            NetworksInfo.avatarImageURLLK,
            NetworksInfo.networkNameLK,
            NetworksInfo.networkLK,
          ),
          CustomNetwork(
            NetworksInfo.avatarImageURLGH,
            NetworksInfo.networkNameGH,
            NetworksInfo.networkGH,
          ),
        ],
      ),
    );
  }
}
