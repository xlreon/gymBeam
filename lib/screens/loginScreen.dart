import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';    

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => new LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = new GoogleSignIn();

Future<FirebaseUser> _signIn() async{
  GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

  FirebaseUser user = await _auth.signInWithGoogle(
    idToken: gSA.idToken, accessToken: gSA.accessToken
  );

  print(user.displayName);
  return user;

}

void login() {
  _signIn().then((FirebaseUser user)=>print(user)).catchError((e)=>print(e));
}

@override
  Widget build(BuildContext context) {
    return  new MaterialApp(
      home: new Scaffold(
        body: new Container(
          child: new Center(
            child: new FlatButton(
              child: new Text("Login"),
              onPressed: () => _signIn().then((FirebaseUser user)=>print(user)).catchError((e)=>print(e)),
            ),
          ),
        )
      )
    );
  }
}