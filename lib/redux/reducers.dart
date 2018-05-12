import './appState.dart';
import './actions.dart';
import 'package:google_sign_in/google_sign_in.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import '../firebase.dart' as firebase;

AppState reducers(AppState prev,action) {
  switch(action) {
    case Actions.Login:
    print("in actions");
    prev.auth = firebase.auth;
    prev.googleSignIn = firebase.googleSignIn;
    prev.user = firebase.user;
    print(prev.user);
    prev.loggedIn = true;
    return prev;
    break;
    default: return prev;
  }
}

