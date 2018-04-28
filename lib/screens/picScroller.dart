import 'package:flutter/material.dart';

class PicScroller extends StatefulWidget {

  PicScroller({this.index});
  final int index;

  @override
  PicScrollerState createState() => new PicScrollerState(index: index);
}

class PicScrollerState extends State<PicScroller> {

  PicScrollerState({this.index});
  final int index;

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
        child:new Center(child: new Text(index.toString()),)
      ),
    );
  }

}