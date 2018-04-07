import 'package:flutter/material.dart';

class NearbyCard extends StatefulWidget {
  @override
  NearbyCardState createState() => new NearbyCardState();
}

class NearbyCardState extends State<NearbyCard> {

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.symmetric(horizontal:10.0),
      child: new InkWell(
        child: new Card(
          child: new Row(
            children: <Widget>[
              new Container(
                child: new Image.asset("assets/images/2.jpg",width: 150.0,),
                // margin: new EdgeInsets.all(10.0),
              ),
              new Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Container(
                      margin: new EdgeInsets.symmetric(horizontal: 10.0),
                      child: new Text("Snap Fitness",style: new TextStyle(fontSize: 20.0),),
                      alignment: Alignment.topLeft,
                    ),
                    new Container(
                      margin: new EdgeInsets.only(left: 10.0,top: 15.0),
                      child: new Row(
                        children: <Widget>[
                          new Icon(Icons.star,color: Colors.black45),
                          new Text("4.1",style: new TextStyle(fontSize: 17.0, fontWeight: FontWeight.w100),),
                        ],
                      )
                    )
                  ],
                )
              ),
              new Container(
                margin: new EdgeInsets.symmetric(horizontal: 10.0),
                child: new Row(
                  children: <Widget>[
                    new ImageIcon(new AssetImage('assets/images/ruppee.png'),size: 15.0,),
                    new Text("100",style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                  ],
                ), 
                alignment: Alignment.centerLeft,
              ),
            ],
          )
        ),
        onTap: () => cardClick(),
      ),
    );

  }

  void cardClick()
  {
    Navigator.of(context).pushNamed('/gymDetails');
  }

}