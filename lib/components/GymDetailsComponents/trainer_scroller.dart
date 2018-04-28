import 'package:flutter/material.dart';
import 'models.dart';

class TrainerScroller extends StatelessWidget {
  TrainerScroller(this.trainers);

  final List<Trainer> trainers;

  Widget _buildActor(BuildContext ctx, int index) {
    var actor = trainers[index];

    return new InkWell(
      onTap: () => Navigator.of(ctx).pushNamed('/trainerDetails'),
      child: new Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: new Column(
          children: [
            new CircleAvatar(
              backgroundImage: new AssetImage(actor.avatarUrl),
              radius: 40.0,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: new Text(actor.name),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: new Text(
            'Trainers',
            style: textTheme.subhead.copyWith(fontSize: 18.0),
          ),
        ),
        new SizedBox.fromSize(
          size: const Size.fromHeight(120.0),
          child: new ListView.builder(
            itemCount: trainers.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 12.0, left: 20.0),
            itemBuilder: _buildActor,
          ),
        ),
      ],
    );
  }
}
