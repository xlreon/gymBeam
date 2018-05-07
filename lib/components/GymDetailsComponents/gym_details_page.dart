import 'package:flutter/material.dart';
import 'trainer_scroller.dart';
import 'models.dart';
import 'gym_detail_header.dart';
import 'photo_scroller.dart';
import 'gym_description.dart';

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
];

class GymDetailsPage extends StatefulWidget {
  GymDetailsPage(this.gym);

  final Gym gym;

  @override
  GymDetailsPageState createState() => new GymDetailsPageState();
}

class GymDetailsPageState extends State<GymDetailsPage> {
  Choice _selectedChoice = choices[0]; // The app's "state".

  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // print(screenHeight);
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back,
            // color: Colors.white, size: 30.0,
          ),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop()
        ),
        backgroundColor: Colors.white,
        title: new Text("Gym Info",style: new TextStyle(color: Colors.black),),
        elevation: 8.0,
        actions: <Widget>[
          new PopupMenuButton<Choice>(
            icon: Icon(Icons.more_vert,color: Colors.black,),
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.skip(2).map((Choice choice) {
                return new PopupMenuItem<Choice>(
                  value: choice,
                  child: new Text(choice.title),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: new Column(
        children: <Widget>[
          new Expanded(
            // height: (screenHeight>800) ? screenHeight - 154.0 : screenHeight - 130.0,
            child: new SingleChildScrollView(
              child: new Column(
                children: [
                  new GymDetailHeader(widget.gym),
                  new Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: new GymDescription(widget.gym.description),
                  ),
                  new PhotoScroller(widget.gym.photoUrls),
                  new Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      bottom: 50.0,
                    ),
                    child: new TrainerScroller(widget.gym.trainers),
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
                    child: new Text("Add to WishList",style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.w300,color: Colors.black)),
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
                    onPressed: () => Navigator.of(context).pushNamed('/chooseMemScreen'),
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
