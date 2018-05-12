import 'package:flutter/material.dart';
import './GymBeam.dart';
import 'dart:async';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import '../redux/reducers.dart'; 
import '../redux/appState.dart';
import '../redux/actions.dart';

class LoginScreen extends StatelessWidget {

final store = new Store(reducers,initialState: new AppState(loggedIn: false));

Widget _loginScreen() {
  return new Scaffold(
          body: new Container(
            child: new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                      new Container(
                    width: 290.0,
                  child: new StoreConnector<dynamic,VoidCallback>(
                          converter: (store) {
                            return ()=> store.dispatch(Actions.Login);
                          },
                          builder: (context,callback) => new RaisedButton(
                          elevation: 5.0,
                          color: Colors.white,
                          textColor: Colors.black,
                          onPressed: callback,
                          child: new Row(
                            children: <Widget>[
                              new Image.asset("assets/images/google.png",
                              alignment: Alignment.center,
                              ),
                              new Container(
                                child: new Text("Login with Google",style:new TextStyle(fontSize: 20.0)),
                                padding: new EdgeInsets.all(10.0),
                              )
                            ],
                          )
                        ),
                  )
                  ),
                ],
              )
            ),
          )
    );
}

Widget _homeScreen() {
  return new GymBeam(userDetails: store.state.user,auth: store.state.auth);
}


@override
  Widget build(BuildContext context) {
    return  new MaterialApp(
              home: new StoreProvider<dynamic>(
              store: store,
              child: new StoreConnector(
              converter: (store) => store.state.loggedIn,
              builder: (context,loggedIn)=> loggedIn ? _homeScreen() : _loginScreen(),
            )
          )
    );
  }
}