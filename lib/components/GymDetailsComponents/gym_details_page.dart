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
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // print(screenHeight);
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
      body: new Column(
        children: <Widget>[
          new Container(
            height: screenHeight - 130.0,
            child: new SingleChildScrollView(
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
          ),
          
          new Container(
            height: 54.0,
            child: new Row(
              children: <Widget>[
                new Container(
                  height: 54.0,
                  width: screenWidth / 2,
                  child: new RaisedButton(
                    child: new Text("Add to WishList",style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.w300)),
                    color: Colors.white,
                    // textColor: Colors.white,
                    onPressed: () => print("wishlist pressed"),
                  )
                ),
                new Container(
                  height: 54.0,
                  width: screenWidth / 2,
                  child: new RaisedButton(
                    child: new Text("Book Now",style: new TextStyle(fontSize: 18.0),),
                    color: Colors.orangeAccent,
                    // textColor: Colors.white,
                    onPressed: () => print("book now pressed"),
                  )
                )
              ],
            )
          )
        ],
      )
      
    );
  }
}
