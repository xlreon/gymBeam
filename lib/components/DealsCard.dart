import 'package:flutter/material.dart';

class DealsCard extends StatefulWidget {
  @override
  DealsCardState createState() => new DealsCardState();
}

class DealsCardState extends State<DealsCard> {

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(10.0),
      width: 200.0,
      child: new Column(
        children: <Widget>[
          new Image.asset("assets/images/1.jpg"),
          new Container(
            child: new Text("Snap Fitness",style: new TextStyle(fontSize: 20.0),),
            alignment: Alignment.centerLeft,
          ),
          new Container(
            child: new Text("Rs.100/day",style: new TextStyle(fontSize: 18.0),),
            alignment: Alignment.centerLeft,
          ),
          
        ],
      ),
    );

  }

}