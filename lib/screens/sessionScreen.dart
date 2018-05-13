import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'DateTimeScreen.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../redux/appState.dart';
import '../redux/actions.dart';
import '../variables.dart' as variables;

class SessionScreen extends StatelessWidget {

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
                child: new Text("Total Number of sessions?",style: new TextStyle(fontSize: 40.0),),
              ),
              new GestureDetector(
                child:new Container(
                  child: new Text(variables.sessionsNumber.toString(),style: new TextStyle(fontSize: 70.0),),
                ),
                // onTap:() => _pickerView(),
                onTap: () async {
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return _pickerView(context);
                    },
                  );
                },
              ),
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
            ]
          ),
        ),
      ),
    );
  }

  void _proceedButton(context)
  {
    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => new DateTimeScreen(sessions: variables.sessionsNumber),
      ),
    );
  }

  Widget _pickerView(context)
  {
  FixedExtentScrollController scrollController = new FixedExtentScrollController(initialItem: variables.sessionsNumber-1);
    return new GestureDetector(
      onTap: () { Navigator.of(context).pop(variables.sessionsNumber);},
      child: new SafeArea(
        child: new StoreConnector(
            converter: (store) {
              return (int index) {
                variables.sessionsNumber = index+1;
                store.dispatch(Actions.SelectSessions);
              };
            },
            builder:(context,callback)=> new CupertinoPicker(
            scrollController: scrollController,
              itemExtent: 60.0,
              backgroundColor: CupertinoColors.white,
              onSelectedItemChanged: callback,
              children: new List<Widget>.generate(10, (int index) {
                return new Center(child:
                  new Text((index+1).toString(),style: new TextStyle(fontSize: 50.0),),
                );
              }),
            // ],
          ),
        ),
      ),
    );
  }

  void onChange(int i)
  {
    print(i);
  }

}