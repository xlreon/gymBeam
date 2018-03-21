import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  ProfileScreenState createState() => new ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Profile'),
        ),
        body: new Center(
            child: new Text('Profile Screen')
        )
    );
  }
}