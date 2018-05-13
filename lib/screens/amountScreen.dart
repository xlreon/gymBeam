import 'package:flutter/material.dart';

class AmountScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(""),
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
        child: new Center(child: new Text("hello"),)
      ),
    );
  }
}