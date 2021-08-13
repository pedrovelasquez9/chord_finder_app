import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBar {
  static getBottomBar(){
    return 
      BottomAppBar( //bottom navigation bar on scaffold
        color:Colors.redAccent,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 5, //notche margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.menu, color: Colors.white,), onPressed: () {},),
            IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: () {},),
            IconButton(icon: Icon(Icons.print, color: Colors.white,), onPressed: () {},),
            IconButton(icon: Icon(Icons.people, color: Colors.white,), onPressed: () {},),
          ],
        ),
    );
  }
}