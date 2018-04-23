import 'package:flutter/material.dart';

class ApplyMemScreen extends StatefulWidget {
  @override
  ApplyMemScreenState createState() => new ApplyMemScreenState();
}

class ApplyMemScreenState extends State<ApplyMemScreen> {

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

      ),
    );
  }

}