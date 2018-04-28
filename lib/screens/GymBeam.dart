import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './mainScreen.dart';
import './profileScreen.dart';
import './searchScreen.dart';
import './editprofileScreen.dart';
import './searchGym.dart';
import './GymDetails.dart';
import './TrainerScreen.dart';

class GymBeam extends StatelessWidget {
  
  final ThemeData kIOSTheme = new ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Colors.blue,
    accentColor: const Color(0xFFFF5959),
  );

  final ThemeData kDefaultTheme = new ThemeData(
    primarySwatch: Colors.blue,
    accentColor: const Color(0xFFFF5959),
  );


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gym Beam',
      routes: <String, WidgetBuilder>{
        '/profile': (BuildContext context) => new ProfileScreen(),
        '/profile/edit': (BuildContext context) => new EditProfileScreen(),
        '/search': (BuildContext context) => new SearchGym(),
        '/gymDetails': (BuildContext context) => new GymDetails(),
        '/trainerDetails': (BuildContext context) => new TrainerDetailsScreen(),
      },
      // Theme setting for IOS and android
      theme: defaultTargetPlatform == TargetPlatform.iOS
            ? kIOSTheme
            : kDefaultTheme,
      home : new MainScreen()
    );
  }
}