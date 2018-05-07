import 'package:flutter/material.dart';
import 'confirmScreen.dart';

class AmountScreen extends StatefulWidget {

  AmountScreen({this.sessions});
  final int sessions;

  @override
  AmountScreenState createState() => new AmountScreenState();
}

class AmountScreenState extends State<AmountScreen> {

  @override
  Widget build(BuildContext context) {
    final int amount = widget.sessions*100 ;
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
        padding: new EdgeInsets.symmetric(vertical: 50.0,horizontal: 20.0),
        child: new Column(
          children: <Widget>[
            new Container(
              // margin: new EdgeInsets.only(top:20.0, left:20.0, bottom: 20.0),
              alignment: Alignment.centerLeft,
              child: new Text("Amount to be Paid",style: new TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),),
            ),
            new Container(
              margin: new EdgeInsets.only(top:20.0),
              alignment: Alignment.centerLeft,
              child: new Row(
                children: <Widget>[
                  new ImageIcon(new AssetImage('assets/images/ruppee.png'),size: 25.0,),
                  new Text(amount.toString(),style: new TextStyle(fontSize: 35.0),),
                ],
              )
            ),
            new Divider(color: Colors.black,),
            new Container(
              margin: new EdgeInsets.only(top:30.0),
              child: new Center(
                // margin: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), 
                child: new RaisedButton(
                  child: new Text("Pay", style: new TextStyle(fontSize: 25.0,color: Colors.white),),
                  color: Colors.black,
                  padding: new EdgeInsets.symmetric(horizontal:40.0, vertical: 10.0),
                  onPressed: () => _payButton(),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }

  void _payButton()
  {
    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => new ConfirmationScreen(),
      ),
    );
  }
}