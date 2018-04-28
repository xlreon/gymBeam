import 'package:flutter/material.dart';
import '../components/NearbyCard.dart';
import '../components/DealsCard.dart';
import '../components/searchBarGym.dart';
class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  SearchBar searchBar;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    void onSubmitted(String value) {
      print(value);
  }

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        title: new Text("GYM BEAM", style: new TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 8.0,
        actions: [searchBar.getSearchAction(context)]);
  }

  HomeScreenState() {
    searchBar = new SearchBar(
        inBar: false,
        buildDefaultAppBar: buildAppBar,
        setState: setState,
        onSubmitted: onSubmitted);
  }

@override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: searchBar.build(context),
      body: new Container(
          child: new ListView(
            children: <Widget>[
              // new BannerComponent(),
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
      ),
    );
    
  }

  void _searchBar()
  {
    Navigator.of(context).pushNamed("/search");
  }
}