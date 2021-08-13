import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String text;
  CustomTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(color: Color.fromRGBO(56, 182, 255, 1.0), letterSpacing: 2.0),
    );
  }
}
