import 'package:flutter/material.dart';
import 'arc_banner_image.dart';
import 'models.dart';
import 'poster.dart';
import 'rating_information.dart';

class GymDetailHeader extends StatelessWidget {
  GymDetailHeader(this.gym);

  final Gym gym;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    var price = new Container(
      // margin: new EdgeInsets.symmetric(horizontal: 10.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              // const Icon(Icons.event_seat),
              new ImageIcon(new AssetImage('assets/images/ruppee.png'),size: 15.0,),
              new Text(gym.price.toString(),style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            ],
          ),
          new Text("per Session") 
        ],
      ),
      alignment: Alignment.centerLeft,
    );

    var movieInformation = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new Text(
          gym.title,
          style: textTheme.title,
        ),
        new Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: new RatingInformation(gym),
        ),
        new Text(
          gym.address,
          style: textTheme.subhead,
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: new Chip(
            label: new Text("Show on Map"),
            labelStyle: textTheme.caption,
            backgroundColor: Colors.black12,
          ),
        ),
      ],
    );

    return new Stack(
      children: [        
        new Padding(
          padding: const EdgeInsets.only(bottom: 150.0),
          child: new ArcBannerImage(gym.bannerUrl),
        ),
        new Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // new Poster(
              //   gym.posterUrl,
              //   height: 180.0,
              // ),
              new Expanded(
                child: new Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: movieInformation,
                ),
              ),
              price,
              
            ],
          ),
        ),
      ],
    );
  }
}
