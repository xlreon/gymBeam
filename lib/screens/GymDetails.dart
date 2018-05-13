import 'package:flutter/material.dart';


import '../components/GymDetailsComponents/gym_api.dart';
import '../components/GymDetailsComponents/gym_details_page.dart';

class GymDetails extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return new GymDetailsPage(testGym);
  }
}