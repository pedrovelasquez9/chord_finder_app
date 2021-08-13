import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  final double radio;
  final String src;
  CustomAvatar(this.radio, this.src);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(this.src),
      radius: this.radio,
    );
  }
}
