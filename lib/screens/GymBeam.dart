import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './mainScreen.dart';
import './profileScreen.dart';
import './searchGym.dart';
import './GymDetails.dart';
import './TrainerScreen.dart';
import './searchScreen.dart';
import './editprofileScreen.dart';
import './chooseMemScreen.dart';
import './sessionScreen.dart';

class GymBeam extends StatefulWidget {

  GymBeam({this.userDetails,this.auth});
  final userDetails;
  final auth;


  @override
  GymBeamState createState() => new GymBeamState();
}


class GymBeamState extends State<GymBeam> {
  
  
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
        '/profile': (BuildContext context) => new ProfileScreen(userDetails: widget.userDetails),
        '/search': (BuildContext context) => new SearchGym(),
        '/gymDetails': (BuildContext context) => new GymDetails(),
        '/trainerDetails': (BuildContext context) => new TrainerDetailsScreen(),
        '/profile/edit': (BuildContext context) => new EditProfileScreen(),
        '/chooseMemScreen': (BuildContext context) => new ChooseMemScreen(),
        '/sessionScreen': (BuildContext context) => new SessionScreen(),
        // '/applyMemScreen': (BuildContext context) => new ApplyMemScreen(ChooseMemScreen.plan),
      },
      // Theme setting for IOS and android
      theme: defaultTargetPlatform == TargetPlatform.iOS
            ? kIOSTheme
            : kDefaultTheme,
      home : new MainScreen(userDetails: widget.userDetails,auth: widget.auth)
    );
  }
}