import 'package:flutter/material.dart';


import '../components/GymDetailsComponents/gym_api.dart' as api;
import '../components/GymDetailsComponents/trainer_details_page.dart';

class TrainerDetailsScreen extends StatefulWidget {
  @override
  TrainerDetailsState createState() => new TrainerDetailsState();
}

class TrainerDetailsState extends State<TrainerDetailsScreen> {

@override
  Widget build(BuildContext context) {
    return new TrainerDetailsPage(api.testTrainer);
  }
}
