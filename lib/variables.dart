import 'package:flutter/material.dart';
import './screens/homeScreen.dart';
import './screens/profileScreen.dart';
import './screens/payScreen.dart';
import './redux/appState.dart';

int index = 0;

final List screens = [
  new Scaffold(
    body: new HomeScreen(),
  ),
  new Scaffold(
    body: new PayScreen()
  ),
  new Scaffold( body: new ProfileScreen())
];

// Array of toolbar items
final toolbarItems = [
  new BottomNavigationBarItem(        
    icon: new Icon(Icons.home),
    title: new Text("home"),
  ),
  new BottomNavigationBarItem(
    icon: new Icon(Icons.monetization_on),
    title: new Text("pay")
  ),
  new BottomNavigationBarItem(
    icon: new Icon(Icons.perm_identity),
    title: new Text("profile")
  )
];

var account=[false,false,false];
var other=[false,false];