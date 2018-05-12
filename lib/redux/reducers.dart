import './appState.dart';
import './actions.dart';
import 'package:google_sign_in/google_sign_in.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';  

AppState reducers(AppState prev,action) {
  switch(action) {
    case Actions.Login:
    prev.auth = FirebaseAuth.instance;
    prev.googleSignIn = new GoogleSignIn();
    Future<FirebaseUser> signIn() async{
      GoogleSignInAccount googleSignInAccount = await prev.googleSignIn.signIn();
      GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

      prev.user = await prev.auth.signInWithGoogle(
      idToken: gSA.idToken, accessToken: gSA.accessToken
      );
      print(prev.user);
      prev.loggedIn = true;
      print(prev.loggedIn);
    }
    signIn();
    

  }
}

