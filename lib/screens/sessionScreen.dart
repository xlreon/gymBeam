import 'package:flutter/material.dart';

class SessionScreen extends StatefulWidget {
  @override
  SessionScreenState createState() => new SessionScreenState();
}

class SessionScreenState extends State<SessionScreen> {

  SessionScreenState({this.plan});
  var plan;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back,
            // color: Colors.white, size: 30.0,
          ),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop()
        ),
        backgroundColor: Colors.white,
        // title: new Text("Gym Info"),
        elevation: 8.0,
      ),
      body: new Container(
        padding: new EdgeInsets.only(top: 20.0),
        child: new Column(
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.only(top:20.0, left:20.0, bottom: 20.0),
              alignment: Alignment.centerLeft,
              child: new Text("Total Number of sessions?",style: new TextStyle(fontSize: 40.0),),
            ),
            
          ]
        ),
      ),
    );
  }

}