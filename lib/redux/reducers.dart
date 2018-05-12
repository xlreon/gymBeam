import './appState.dart';
import './actions.dart';
import 'package:google_sign_in/google_sign_in.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import '../firebase.dart' as firebase;
import '../variables.dart' as variables;

AppState reducers(AppState prev,action) {
  switch(action) {
    case Actions.Login:
    print("in login");
    prev.auth = firebase.auth;
    prev.googleSignIn = firebase.googleSignIn;
    prev.user = firebase.user;
    print(prev.user);
    prev.loggedIn = true;
    return prev;
    break;
    case Actions.ChangeScreen:
    print("in change screen");
    prev.currentScreen = variables.screens[variables.index];
    return prev;
    break;
    default: return prev;
  }
}

