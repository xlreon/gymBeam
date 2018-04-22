import 'package:flutter/material.dart';
import '../components/HomeBanner.dart';
import '../components/NearbyCard.dart';
import '../components/DealsCard.dart';
class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

@override
  Widget build(BuildContext context) {
    return new Container(
          child: new ListView(
            children: <Widget>[
              new BannerComponent(),
              new Container(
                margin: new EdgeInsets.only(left:20.0, top: 10.0),
                child: new Text("Hot Deals",style: new TextStyle(
                  fontSize: 20.0
                )),
              ),
              new Container(
                margin: new EdgeInsets.all(10.0),
                height: 200.0,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    new DealsCard(),
                    new DealsCard(),
                    new DealsCard(),
                  ],
                ),
              ),  
              new Container(
                margin: new EdgeInsets.only(left:20.0, top: 10.0),
                child: new Text("Nearby You",style: new TextStyle(
                  fontSize: 20.0
                )),
              ),
              new NearbyCard(),
              new NearbyCard(),
              new NearbyCard(),
            ],
          )
      );
  }
}