import 'package:flutter/material.dart';
import '../components/banner.dart';
class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

@override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            new BannerComponent(),
            new Flexible(
              child: new Center(
                child: new Text("Home Screen"),
              ),
            )
          ],
        )
      ),
    );
  }
}