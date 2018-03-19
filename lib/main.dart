import 'package:flutter/material.dart';

void main() => runApp(new GymBeam());

class GymBeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gym Beam',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : new Scaffold(
        appBar: new AppBar(
          title: new Text("Gym Beam"),
        ),
      )
    );
  }
}

