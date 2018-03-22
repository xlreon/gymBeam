import 'package:flutter/material.dart';
import '../components/ProfileBanner.dart';
class ProfileScreen extends StatefulWidget {
  @override
  ProfileScreenState createState() => new ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
@override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            new ProfileBanner(),
            new Container(
              margin: new EdgeInsets.symmetric(vertical:8.0),
              child: new Text("Recent Places",
                style: new TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            new Flexible(
              child: new ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: new Card(
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Container(
                            height: 200.0,
                            // margin: const EdgeInsets.symmetric(horizontal: 0.0),
                            child: new Image.asset("assets/images/1.jpg"
                              ,fit: BoxFit.contain,),
                          ),
                          const ListTile(
                            leading: const Icon(Icons.album),
                            title: const Text('The Enchanted Nightingale'),
                            subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                          ),
                        ],
                      )
                    ),
                  ),
                  
                  new Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: new Card(
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Container(
                            height: 200.0,
                            // margin: const EdgeInsets.symmetric(horizontal: 0.0),
                            child: new Image.asset("assets/images/2.jpg"
                              ,fit: BoxFit.contain,),
                          ),
                          const ListTile(
                            leading: const Icon(Icons.album),
                            title: const Text('The Enchanted Nightingale'),
                            subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                          ),
                        ],
                      )
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}