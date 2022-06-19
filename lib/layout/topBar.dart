import 'package:flutter/material.dart';

class TopBar {
  static getAppBar() {
    return Semantics(
        label: "Guitar chord book",
        child: AppBar(
          title: Text("Guitar chord book"),
          centerTitle: true,
        ));
  }
}
