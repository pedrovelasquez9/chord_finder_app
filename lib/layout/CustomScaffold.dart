import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget view;
  final String title;
  CustomScaffold({required this.view, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(26, 9, 56, 1),
      appBar: AppBar(
        title: Text(this.title),
        backgroundColor: Color.fromRGBO(26, 9, 56, 1),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: this.view,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(94, 35, 121, 1),
        //Floating action button on Scaffold
        onPressed: () {
          Navigator.popUntil(context, (Route<dynamic> route) => route.isFirst);
          //code to execute on button press
        },
        child: Icon(Icons.home), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center

      bottomNavigationBar: BottomAppBar(
        //bottom navigation bar on scaffold
        color: Color.fromRGBO(54, 30, 96, 1),
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin:
            5, //notche margin between floating button and bottom appbar
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.info,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/info");
              },
            ),
            // IconButton(
            //   icon: Icon(
            //     Icons.search,
            //     color: Colors.white,
            //   ),
            //   onPressed: () {},
            // ),
            // IconButton(
            //   icon: Icon(
            //     Icons.print,
            //     color: Colors.white,
            //   ),
            //   onPressed: () {},
            // ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/about");
              },
            ),
          ],
        ),
      ),
    );
  }
}
