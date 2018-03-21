import 'package:flutter/material.dart';
import '../components/ProfileBanner.dart';
class ProfileScreen extends StatefulWidget {
  @override
  ProfileScreenState createState() => new ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
@override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            new ProfileBanner(),
            new Flexible(
              child: new Center(
                child: new Text("Profile Screen"),
              ),
            )
          ],
        )
      ),
    );
  }
}