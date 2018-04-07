import 'package:flutter/material.dart';


import '../components/GymDetailsComponents/gym_api.dart';
import '../components/GymDetailsComponents/gym_details_page.dart';

class GymDetails extends StatefulWidget {
  @override
  GymDetailsState createState() => new GymDetailsState();
}

class GymDetailsState extends State<GymDetails> {

@override
  Widget build(BuildContext context) {
    return new GymDetailsPage(testGym);
  }
}