import 'package:flutter/material.dart';
import 'trainer_scroller.dart';
import 'models.dart';
import 'gym_detail_header.dart';
import 'photo_scroller.dart';
import 'gym_description.dart';

class GymDetailsPage extends StatelessWidget {
  GymDetailsPage(this.gym);

  final Gym gym;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back_ios,
            // color: Colors.white, size: 30.0,
          ),
          onPressed: () => Navigator.of(context).pop()
        ),
        title: new Text("Gym Info"),
        elevation: 8.0,
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: [
            new GymDetailHeader(gym),
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new GymDescription(gym.description),
            ),
            new PhotoScroller(gym.photoUrls),
            new Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 50.0,
              ),
              child: new TrainerScroller(gym.trainers),
            ),
          ],
        ),
      ),
    );
  }
}
