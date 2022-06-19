import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final TextAlign alignment;
  CustomText(this.text, this.color,
      {this.fontSize = 14, this.alignment = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      semanticsLabel: this.text,
      style: TextStyle(
          color: this.color,
          letterSpacing: 1.5,
          fontWeight: FontWeight.bold,
          fontSize: this.fontSize),
      textAlign: this.alignment,
    );
  }
}
