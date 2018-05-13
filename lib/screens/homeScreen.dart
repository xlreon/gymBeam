import 'package:flutter/material.dart';
import '../redux/appState.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomeScreen extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return new StoreProvider(
          store:store,
          child: new Scaffold(
        appBar: new AppBar(
          title: new Text("GYM BEAM", style: new TextStyle(color: Colors.black,fontSize: 25.0, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.white,
          centerTitle: false,
          elevation: 8.0,
          actions: <Widget>[
            new IconButton(
              color: Colors.black,
              icon: new Icon(Icons.search),
              onPressed: () => _searchBar(context),
            )
          ],
        ),
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
                    children: store.state.dealsCard,
                  ),
                ),  
                new Container(
                  margin: new EdgeInsets.only(left:20.0, top: 10.0),
                  child: new Text("Nearby You",style: new TextStyle(
                    fontSize: 20.0
                  )),
                ),
                store.state.nearByCards[0],
                store.state.nearByCards[1],
                store.state.nearByCards[2],

              ],
            )
        ),
      ),
    );
    
  }

  void _searchBar(context)
  {
    Navigator.of(context).pushNamed("/search");
  }
}