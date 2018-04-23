import 'package:flutter/material.dart';

class ChooseMemScreen extends StatefulWidget {
  @override
  ChooseMemScreenState createState() => new ChooseMemScreenState();
}

class ChooseMemScreenState extends State<ChooseMemScreen> {

  var selectedPlan = "session";
  var isSelected = [true,false,false,false];
  var plan = 0;

  void onChanged(value)
  {
    setState(()
    {
      selectedPlan = value;
    });
  }

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
              child: new Text("Choose your Plan",style: new TextStyle(fontSize: 40.0),),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: new Row(
                children: <Widget>[
                  new Radio(value: "session",groupValue: selectedPlan,onChanged: (String value){onChanged(value);},),
                  new Text("Take Sessions",style: new TextStyle(fontSize: 20.0),),
                ]
              )
            ),
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), 
              child: new Row(
                children: <Widget>[
                  new Radio(value: "membership",groupValue: selectedPlan,onChanged: (String value){onChanged(value);},),
                  new Text("Take Membership",style: new TextStyle(fontSize: 20.0),),
                ],
              ),
            ),
            selectedPlan == "membership" ? new Container(
              margin: new EdgeInsets.all(10.0),
              child: new Column(
                children: <Widget>[
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      new Container(
                        height: 50.0,
                        width: 160.0,
                        child: new RaisedButton(
                          color: isSelected[0] ? Colors.orangeAccent : Colors.white,
                          onPressed: () => _buttonSelected(0),
                          child: new Row(
                            children: <Widget>[
                              isSelected[0] ? new Icon(Icons.check) : new Container(),
                              new Text("Monthly", style: new TextStyle(fontSize: 20.0),),
                            ],
                          ),
                        ),
                      ),
                      new Container(width: 10.0,),
                      new Container(
                        height: 50.0,
                        width: 160.0,
                        child: new RaisedButton(
                          color: isSelected[1] ? Colors.orangeAccent : Colors.white,
                          onPressed: () => _buttonSelected(1),
                          child: new Row(
                            children: <Widget>[
                              isSelected[1] ? new Icon(Icons.check) : new Container(),
                              new Text("Quarterly", style: new TextStyle(fontSize: 20.0),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  new Container(height: 10.0,),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        height: 50.0,
                        width: 160.0,
                        child: new RaisedButton(
                          color: isSelected[2] ? Colors.orangeAccent : Colors.white,
                          onPressed: () => _buttonSelected(2),
                          child: new Row(
                            children: <Widget>[
                              isSelected[2] ? new Icon(Icons.check) : new Container(),
                              new Text("Half Yearly", style: new TextStyle(fontSize: 20.0),),
                            ],
                          ),
                        ),
                      ),
                      new Container(width: 10.0,),
                      new Container(
                        height: 50.0,
                        width: 160.0,
                        child: new RaisedButton(
                          color: isSelected[3] ? Colors.orangeAccent : Colors.white,
                          onPressed: () => _buttonSelected(3),
                          child: new Row(
                            children: <Widget>[
                              isSelected[3] ? new Icon(Icons.check) : new Container(),
                              new Text("Yearly", style: new TextStyle(fontSize: 20.0),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ) : new Container(),
            new Container(
              margin: new EdgeInsets.only(top:30.0),
              child: new Center(
                // margin: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), 
                child: new RaisedButton(
                  child: new Text("Proceed", style: new TextStyle(fontSize: 25.0,color: Colors.white),),
                  color: Colors.black,
                  padding: new EdgeInsets.symmetric(horizontal:40.0, vertical: 10.0),
                  onPressed: () => _proceedButton(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _buttonSelected(index)
  {
    // print(index);
    setState(() {
      for (var i = 0; i < 4; i++) {
        isSelected[i] = false;
      }
      isSelected[index]=true;
      plan = index;
    });
  }

  void _proceedButton()
  {
    if(selectedPlan == "session")
    {
      Navigator.of(context).pushNamed('/sessionScreen');
    }
    else
    {
      Navigator.of(context).pushNamed('/applyMemScreen');
    }
  }
}