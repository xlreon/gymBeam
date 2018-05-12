import 'package:google_sign_in/google_sign_in.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';  

class AppState {
  AppState({this.auth,this.googleSignIn,this.loggedIn,this.user});
  FirebaseAuth auth;
  GoogleSignIn googleSignIn;
  bool loggedIn = false;
  FirebaseUser user;
}