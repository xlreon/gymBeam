import 'package:flutter/material.dart';
import '../components/mapView.dart';

class SearchGym extends StatefulWidget {
  @override
  SearchGymState createState() => new SearchGymState();
}

class SearchGymState extends State<SearchGym> {
@override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            // new BannerComponent(),
            new Flexible(
              child: new Center(
                child: new MapView(),
              ),
            )
          ],
        )
      ),
    );
  }
}