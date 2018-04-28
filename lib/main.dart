import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'screens/mainScreen.dart';
import 'screens/profileScreen.dart';
import 'screens/searchScreen.dart';
import 'screens/editprofileScreen.dart';
import 'screens/searchGym.dart';
import 'screens/GymDetails.dart';
import 'screens/TrainerScreen.dart';

void main() => runApp(new GymBeam());

class GymBeam extends StatelessWidget {
  
  final ThemeData kIOSTheme = new ThemeData(
    primarySwatch: Colors.white,
    primaryColor: Colors.white,
    accentColor: const Color(0xFFFF5959),
  );

  final ThemeData kDefaultTheme = new ThemeData(
    primarySwatch: Colors.white,
    accentColor: const Color(0xFFFF5959),
  );


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gym Beam',
      routes: <String, WidgetBuilder>{
        '/profile': (BuildContext context) => new ProfileScreen(),
        '/profile/edit': (BuildContext context) => new EditProfileScreen(),
        '/search': (BuildContext context) => new SearchScreen(),
        '/searchGym': (BuildContext context) => new SearchGym(),
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
