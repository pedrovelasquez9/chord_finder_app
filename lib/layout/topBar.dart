import 'package:flutter/material.dart';

class TopBar {
  static getAppBar() {
    return 
      AppBar(
        title: Text("Guitar chord finder"),
        centerTitle: true,
      );
  }
}