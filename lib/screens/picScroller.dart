import 'package:flutter/material.dart';
import '../variables.dart' as variables;

class PicScroller extends StatelessWidget {

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
        backgroundColor: Colors.transparent,
        // title: new Text("Gym Info"),
        elevation: 8.0,
      ),
      body: new Container(
        child:new Center(child: new Text(variables.picIndex.toString()),)
      ),
    );
  }

}