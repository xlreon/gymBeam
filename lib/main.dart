import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
void main() => runApp(new GymBeam());

class GymBeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gym Beam',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : new Scaffold(
        appBar: new AppBar(
          title: new Text("Gym Beam"),
        ),
      body: new Scaffold(
        bottomNavigationBar: new CupertinoTabBar(
          key: new Key("toolbar"),
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.favorite),
              title: new Text("home")
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: new Text("search")
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.monetization_on),
              title: new Text("money")
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.favorite),
              title: new Text("favorite")
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.contacts),
              title: new Text("profile")
            )
          ],
        ),
      )
      )
    );
  }
}


