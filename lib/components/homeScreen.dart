import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
            child: new Text('Home Screen')
        )
    );
  }
}