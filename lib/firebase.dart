import 'package:google_sign_in/google_sign_in.dart'; 
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = new GoogleSignIn();
  FirebaseUser user;

  Future<FirebaseUser> signIn() async{
      GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

      user = await auth.signInWithGoogle(
      idToken: gSA.idToken, accessToken: gSA.accessToken
      );
    }