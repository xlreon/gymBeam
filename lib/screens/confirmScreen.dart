import 'package:flutter/material.dart';
import 'mainScreen.dart';

class ConfirmationScreen extends StatefulWidget {

  @override
  ConfirmationScreenState createState() => new ConfirmationScreenState();
}

class ConfirmationScreenState extends State<ConfirmationScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: new AppBar(
      //   title: new Text(""),
      //   leading: new IconButton(
      //     icon: new Icon(
      //       Icons.arrow_back,
      //       // color: Colors.white, size: 30.0,
      //     ),
      //     color: Colors.black,
      //     onPressed: () => Navigator.of(context).pop()
      //   ),
      //   backgroundColor: Colors.white,
      //   // title: new Text("Gym Info"),
      //   elevation: 8.0,
      // ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.symmetric(vertical: 30.0,horizontal: 20.0),
            child: new Card(
              elevation: 5.0,
              child: new Column(
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.only(top: 20.0),
                    alignment: Alignment.topCenter,
                    child: new Text("Booking Confirmed",style: new TextStyle(fontSize: 30.0,fontWeight: FontWeight.w700)),
                  ),
                  new Center(
                    child: new Container(
                      margin: new EdgeInsets.symmetric(vertical: 20.0),
                      decoration: new BoxDecoration(
                        border: new Border.all(),
                        borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                      ),
                      child: new Icon(Icons.check,size: 50.0,color: Colors.green,),
                    )
                  ),
                  new Container(
                    margin: new EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                    padding: new EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                    alignment: Alignment.centerLeft,
                    decoration: new BoxDecoration(
                      border: new Border.all(),
                      borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                    ),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("Gym Name : ",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                        new Text("Snap Fitness",style: new TextStyle(fontSize: 20.0),textAlign: TextAlign.left,),
                        new Text("Gym Address : ",style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                        new Text("635/2, 17th H Cross",style: new TextStyle(fontSize: 20.0),),
                      ],
                    ),
                  )
                ],
              )
            ),
          ),
          new Container(
              margin: new EdgeInsets.only(top:30.0),
              child: new Center(
                // margin: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), 
                child: new RaisedButton(
                  child: new Text("Back to Home", style: new TextStyle(fontSize: 20.0,color: Colors.white),),
                  color: Colors.black,
                  padding: new EdgeInsets.symmetric(horizontal:20.0, vertical: 10.0),
                  onPressed: () => homeButton(),
                ),
              ),
            ),
        ],
      )
      
    );
  }

  void homeButton()
  {
    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => new MainScreen(),
      ),
    );
  }
}