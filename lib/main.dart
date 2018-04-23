import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'screens/mainScreen.dart';
import 'screens/profileScreen.dart';
import 'screens/searchGym.dart';
import 'screens/GymDetails.dart';
import 'screens/TrainerScreen.dart';
import 'screens/searchScreen.dart';
import 'screens/editprofileScreen.dart';
import 'screens/chooseMemScreen.dart';
import 'screens/sessionScreen.dart';
import 'screens/applyMemScreen.dart';

void main() => runApp(new GymBeam());

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
        '/search': (BuildContext context) => new SearchGym(),
        '/gymDetails': (BuildContext context) => new GymDetails(),
        '/trainerDetails': (BuildContext context) => new TrainerDetailsScreen(),
        '/profile/edit': (BuildContext context) => new EditProfileScreen(),
        '/chooseMemScreen': (BuildContext context) => new ChooseMemScreen(),
        '/sessionScreen': (BuildContext context) => new SessionScreen(),
        '/applyMemScreen': (BuildContext context) => new ApplyMemScreen(),
      },
      // Theme setting for IOS and android
      theme: defaultTargetPlatform == TargetPlatform.iOS
            ? kIOSTheme
            : kDefaultTheme,
      home : new MainScreen()
    );
  }
}
