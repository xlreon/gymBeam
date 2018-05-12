import 'package:google_sign_in/google_sign_in.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../screens/homeScreen.dart';
import 'package:redux/redux.dart';
import '../redux/reducers.dart';

class AppState {
  AppState({this.auth,this.googleSignIn,this.loggedIn,this.user,this.currentScreen});
  FirebaseAuth auth;
  GoogleSignIn googleSignIn;
  bool loggedIn = false;
  FirebaseUser user;
  var currentScreen;
}

final store = new Store(reducers,initialState: new AppState(loggedIn: false,currentScreen: new Scaffold(
  body: new HomeScreen(),
) ));