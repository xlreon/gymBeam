import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'components/mainScreen.dart';
import 'components/profileScreen.dart';
import 'components/homeScreen.dart';
import 'components/searchScreen.dart';
import 'components/payScreen.dart';
void main() => runApp(new GymBeam());

class GymBeam extends StatelessWidget {
  
  final ThemeData kIOSTheme = new ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Colors.blue
  );

  final ThemeData kDefaultTheme = new ThemeData(
    primarySwatch: Colors.blue,
    accentColor: Colors.blue,
  );


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gym Beam',
      routes: <String, WidgetBuilder>{
        '/profile': (BuildContext context) => new ProfileScreen(),
      },
      // Theme setting for IOS and android
      theme: defaultTargetPlatform == TargetPlatform.iOS
            ? kIOSTheme
            : kDefaultTheme,
      home : new MainScreen()
    );
  }
}
