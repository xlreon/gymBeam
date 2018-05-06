import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
import './GymBeam.dart';
import 'dart:async';    

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => new LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = new GoogleSignIn();

bool loggedIn = false;
var userDetails;

Future<FirebaseUser> _signIn() async{
  GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

  FirebaseUser user = await _auth.signInWithGoogle(
    idToken: gSA.idToken, accessToken: gSA.accessToken
  );

  print(user.displayName);
  setState(() {
      userDetails = user;
      loggedIn = true;
    });
  return user;

}

Widget _loginScreen() {
  return new MaterialApp(
      home: new Scaffold(
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                    new Container(
                  width: 290.0,
                child: new RaisedButton(
                      elevation: 5.0,
                      color: Colors.white,
                      textColor: Colors.black,
                      onPressed: () => _signIn().then((FirebaseUser user)=>print(user)).catchError((e)=>print(e)),
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
                    )
                ),
              ],
            )
          ),
        )
      )
    );
}

Widget _homeScreen() {
  return new GymBeam(userDetails: userDetails,auth: _auth);
}


@override
  Widget build(BuildContext context) {
    return  loggedIn ? _homeScreen() : _loginScreen();
  }
}