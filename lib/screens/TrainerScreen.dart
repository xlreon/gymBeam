import 'package:flutter/material.dart';


import '../components/GymDetailsComponents/gym_api.dart' as api;
import '../components/GymDetailsComponents/trainer_details_page.dart';


class TrainerDetails extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return new TrainerDetailsPage(api.testTrainer);
  }
}
