// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class LayoutColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout Column')),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(color: Colors.orangeAccent, child: FlutterLogo(size: 80.0)),
          Container(color: Colors.greenAccent, child: FlutterLogo(size: 80.0)),
          Container(color: Colors.purpleAccent, child: FlutterLogo(size: 80.0)),
          Container(color: Colors.redAccent, child: FlutterLogo(size: 80.0)),
          Container(color: Colors.blueAccent, child: FlutterLogo(size: 80.0))
        ],
      )),
    );
  }
}
