import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: halamanpertama(),
    routes: <String, WidgetBuilder>{
      'halamanpertama': (BuildContext context) => halamanpertama(),
      'halamankedua': (BuildContext context) => halamankedua(),
    },
  ));
}

class halamanpertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portal menu akses route"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.headset,
            size: 50.0,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/halamankedua');
          },
        ),
      ),
    );
  }
}

class halamankedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Speaker"),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.speaker,
            size: 50.0,
            color: Colors.pink,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/halamanpertama');
          },
        ),
      ),
    );
  }
}
