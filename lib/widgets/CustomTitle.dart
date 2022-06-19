import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  CustomTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      semanticsLabel: this.text,
      style: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1.0),
          letterSpacing: 2.0,
          fontSize: 20),
      textAlign: TextAlign.center,
    );
  }
}
