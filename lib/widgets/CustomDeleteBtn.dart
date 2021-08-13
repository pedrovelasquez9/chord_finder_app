import 'package:flutter/material.dart';

class CustomDeleteBtn extends StatelessWidget {
  final Function erase;
  CustomDeleteBtn(this.erase);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton.icon(
          onPressed: () {
            erase();
          },
          minWidth: 10.0,
          label: Text(
            "",
            textAlign: TextAlign.center,
          ),
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
