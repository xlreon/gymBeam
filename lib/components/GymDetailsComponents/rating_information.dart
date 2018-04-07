import 'package:flutter/material.dart';
import 'models.dart';

class RatingInformation extends StatelessWidget {
  RatingInformation(this.gym);

  final Gym gym;

  _buildRatingBar(ThemeData theme) {
    var stars = <Widget>[];

    for (var i = 1; i <= 5; i++) {
      var color = i <= gym.starRating ? theme.accentColor : Colors.black12;
      var star = new Icon(
        Icons.star,
        color: color,
      );

      stars.add(star);
    }

    return new Row(children: stars);
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    var ratingCaptionStyle = textTheme.caption.copyWith(color: Colors.black45);

    var starRating = new Container(
      padding: new EdgeInsets.only(left: 10.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildRatingBar(theme),
          new Padding(
            padding: const EdgeInsets.only(top: 4.0, left: 15.0),
            // child: new Center(
              child: new Text(
                "Ratings : " + gym.rating.toString(),
                style: ratingCaptionStyle,
              ),
            // ),
          ),
        ],
      )
    );

    var price = new Container(
      // margin: new EdgeInsets.symmetric(horizontal: 10.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              // const Icon(Icons.event_seat),
              new ImageIcon(new AssetImage('assets/images/ruppee.png')),
              new Text(gym.price.toString(),style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
            ],
          ),
          new Text("per Session") 
        ],
      ),
      alignment: Alignment.centerLeft,
    );

    return new Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // numericRating,
        price,
        new Expanded(
          child: starRating,
        ),
        
      ],
    );
  }
}
