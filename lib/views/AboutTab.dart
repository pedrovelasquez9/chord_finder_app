import 'package:guitar_chord_book/widgets/CustomText.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText("¡Bienvenido a Guitar chord book!", Colors.white),
          SizedBox(
            height: 20,
          ),
          CustomText(
              "Esta app está diseñada para buscar entre los acordes de guitarra más usados y la posición de los dedos para que puedas tocar cualquiera de ellos.",
              Colors.white),
          SizedBox(
            height: 20,
          ),
          CustomText(
              "Si estás buscando un acorde en específico y no aparece o la imagen del mismo se genera de forma incorrecta, por favor deja un comentario en cualquiera de los canales de contacto que aparecen en la página del creador de esta app y procederé a agregar/corregir lo necesario.",
              Colors.white),
          SizedBox(
            height: 20,
          ),
          CustomText("¡Muchas gracias por tu apoyo!", Colors.white),
          Image.asset('./assets/about_background.png')
        ],
      ),
    );
  }
}
