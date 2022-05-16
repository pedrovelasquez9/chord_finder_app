import 'package:chord_finder/widgets/CustomText.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HowToUseTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText("Usar Chord Finder es muy fácil, te lo explico en pasos:",
              Colors.white),
          SizedBox(
            height: 20,
          ),
          CustomText(
              "1 Selecciona en la pantalla de inicio uno de los acordes base",
              Colors.white),
          SizedBox(
            height: 20,
          ),
          CustomText(
              "2 En la siguiente pantalla, verás las distintas variantes/tonalidades del acorde seleccionado",
              Colors.white),
          SizedBox(
            height: 20,
          ),
          CustomText(
              "3 Elige qué acorde quieres ver y te llevará al diagrama del acorde para que puedas ver la posición de los dedos en los trastes y cuerdas de la guitarra",
              Colors.white),
              Image.asset('./assets/how_to_use_background.png')
        ],
      ),
    );
  }
}
