import 'package:flutter/material.dart';
import 'applyMemScreen.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../variables.dart' as variables;
import '../redux/appState.dart';
import '../redux/actions.dart';

class ChooseMemScreen extends StatelessWidget {

  void onChanged(value)
  {
      variables.selectedPlan = value;
  }

@override
  Widget build(BuildContext context) {
    return new StoreProvider(
          store: store,
          child: Scaffold(
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
                    new StoreConnector(
                      converter: (store){
                        return (String value) {
                          onChanged(value);
                          store.dispatch(Actions.SelectMembership);
                        };
                      },
                      builder:(context,callback)=> new Radio(value: "session",groupValue: variables.selectedPlan,onChanged: callback,)),
                    new Text("Take Sessions",style: new TextStyle(fontSize: 20.0),),
                  ]
                )
              ),
              new Container(
                margin: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), 
                child: new Row(
                  children: <Widget>[
                    new StoreConnector(
                      converter: (store) {
                        return (String value) {
                          onChanged(value);
                          store.dispatch(Actions.SelectMembership);
                        };
                      },
                      builder:(context,callback)=> new Radio(value: "membership",groupValue: variables.selectedPlan,onChanged: callback,)),
                    new Text("Take Membership",style: new TextStyle(fontSize: 20.0),),
                  ],
                ),
              ),
              variables.selectedPlan == "membership" ? new Container(
                margin: new EdgeInsets.all(10.0),
                child: new Column(
                  children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        new Container(
                          height: 50.0,
                          width: 160.0,
                          child: new StoreConnector(
                              converter: (store) {
                                return (int index) {
                                _buttonSelected(index);
                                store.dispatch(Actions.SelectMembershipType);
                                };
                              },
                              builder:(context,callback)=> new RaisedButton(
                              color: variables.isSelected[0] ? Colors.orangeAccent : Colors.white,
                              onPressed: () => callback(0),
                              child: new Row(
                                children: <Widget>[
                                  variables.isSelected[0] ? new Icon(Icons.check) : new Container(),
                                  new Text("Monthly", style: new TextStyle(fontSize: 20.0),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        new Container(width: 10.0,),
                        new Container(
                          height: 50.0,
                          width: 160.0,
                          child: new StoreConnector(
                              converter: (store) {
                                return (int index) {
                                  _buttonSelected(index);
                                  store.dispatch(Actions.SelectMembershipType);
                                };
                              },
                              builder:(context,callback)=> new RaisedButton(
                              color: variables.isSelected[1] ? Colors.orangeAccent : Colors.white,
                              onPressed: () => callback(1),
                              child: new Row(
                                children: <Widget>[
                                  variables.isSelected[1] ? new Icon(Icons.check) : new Container(),
                                  new Text("Quarterly", style: new TextStyle(fontSize: 20.0),),
                                ],
                              ),
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
                          child: new StoreConnector(
                              converter: (store) {
                                return (int index) {
                                  _buttonSelected(index);
                                  store.dispatch(Actions.SelectMembershipType);
                                };
                              },  
                              builder:(context,callback)=> new RaisedButton(
                              color: variables.isSelected[2] ? Colors.orangeAccent : Colors.white,
                              onPressed: () => callback(2),
                              child: new Row(
                                children: <Widget>[
                                  variables.isSelected[2] ? new Icon(Icons.check) : new Container(),
                                  new Text("Half Yearly", style: new TextStyle(fontSize: 20.0),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        new Container(width: 10.0,),
                        new Container(
                          height: 50.0,
                          width: 160.0,
                          child: new StoreConnector(
                              converter: (store){
                                return (int index) {
                                  _buttonSelected(index);
                                  store.dispatch(Actions.SelectMembershipType);
                                };
                              },  
                              builder:(context,callback)=> new RaisedButton(
                              color: variables.isSelected[3] ? Colors.orangeAccent : Colors.white,
                              onPressed: () => callback(3),
                              child: new Row(
                                children: <Widget>[
                                  variables.isSelected[3] ? new Icon(Icons.check) : new Container(),
                                  new Text("Yearly", style: new TextStyle(fontSize: 20.0),),
                                ],
                              ),
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
                    onPressed: () => _proceedButton(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _buttonSelected(index)
  {
    // print(index);
      for (var i = 0; i < 4; i++) {
        variables.isSelected[i] = false;
      }
      variables.isSelected[index]=true;
      variables.plan = index;
  }

  void _proceedButton(context)
  {
    if(variables.selectedPlan == "session")
    {
      Navigator.of(context).pushNamed('/sessionScreen');
    }
    else
    {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new ApplyMemScreen(plan: variables.plan),
        ),
      );
    }
  }
}