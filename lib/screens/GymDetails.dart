import 'package:flutter/material.dart';


import '../components/GymDetailsComponents/movie_api.dart';
import '../components/GymDetailsComponents/movie_details_page.dart';

class GymDetails extends StatefulWidget {
  @override
  GymDetailsState createState() => new GymDetailsState();
}

class GymDetailsState extends State<GymDetails> {

@override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        accentColor: const Color(0xFFFF5959),
      ),
      home: new MovieDetailsPage(testMovie),
    );
  }
}