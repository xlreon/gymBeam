import 'package:flutter/material.dart';

class DateTimeScreen extends StatefulWidget {

  DateTimeScreen({this.sessions});
  final int sessions;

  @override
  DateTimeScreenState createState() => new DateTimeScreenState(sessions: sessions);
}

class DateTimeScreenState extends State<DateTimeScreen> {

  DateTimeScreenState({this.sessions});
  final int sessions;

@override
  Widget build(BuildContext context) {
    // print (plan);
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
        // child:new Center(child: new Text(sessions.toString()),)
      ),
    );
  }

}