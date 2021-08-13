import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomLoading extends StatelessWidget {
  final spinkit = SpinKitRotatingCircle(
    color: Colors.blue,
    size: 50.0,
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: spinkit,
    );
  }
}
