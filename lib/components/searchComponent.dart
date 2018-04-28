import 'package:flutter/material.dart';
class SearchComponent extends StatefulWidget {
  @override
  SearchComponentState createState() => new SearchComponentState();
}

class SearchComponentState extends State<SearchComponent> {
@override
  Widget build(BuildContext context) {
    return new Container(
      child: new GestureDetector(
        onTap: ()  {print ("SearchBox tapped.");Navigator.of(context).pushNamed('/searchGym');},
        child: new Container(
          padding: new EdgeInsets.only(
            top: 90.0, left: 25.0, right: 25.0, bottom: 0.0
          ),
          child:new Container(
            height: 50.0,
            // margin: new EdgeInsets.symmetric(horizontal:10.0),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(const Radius.circular(30.0)),
              border: new Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
            child: new Row(children: <Widget>[
              new IconButton(
                icon: new Icon(Icons.search),
                // onPressed: () => Navigator.of(context).pushNamed('/search'),
                iconSize: 25.0,
              ),
              new Text(
                "Enter Gym nearby you",
                style: new TextStyle(fontWeight: FontWeight.w100),
              )
            ],),
          )
        ),
      ),
    );
  }
}