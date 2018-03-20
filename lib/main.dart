import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
void main() => runApp(new GymBeam());

class GymBeam extends StatelessWidget {
  
  final ThemeData kIOSTheme = new ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Colors.blue
  );

  final ThemeData kDefaultTheme = new ThemeData(
    primarySwatch: Colors.blue,
    accentColor: Colors.blue,
  );


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gym Beam',
      routes: <String, WidgetBuilder>{
        '/profile': (BuildContext context) => new ProfilePage(),
      },
      // Theme setting for IOS and android
      theme: defaultTargetPlatform == TargetPlatform.iOS
            ? kIOSTheme
            : kDefaultTheme,
      home : new HomePage()
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Profile'),
        ),
        body: new Center(
            child: new Text('Profile Screen')
        )
    );
  }
}

class HomePage extends StatelessWidget {
    final List toolbarItems = [
            new BottomNavigationBarItem(        
            icon: new Icon(Icons.home),
            title: new Text("home"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: new Text("search")
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.monetization_on),
              title: new Text("money")
            )];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Gym Beam"),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.perm_identity,color: Colors.white), onPressed: () => Navigator.of(context).pushNamed('/profile')
            )
          ],
        ),
      body: new Scaffold(
        bottomNavigationBar: Theme.of(context).platform == TargetPlatform.iOS
        ? // IOS theme for toolbar
          new CupertinoTabBar(
          key: new Key("toolbar"),
          // Toolbar menu items
          items: toolbarItems,
          currentIndex: 1,
        )
        : // Android theme for toolbar
          new BottomNavigationBar(
          key: new Key("toolbar"),
          // Toolbar menu items
          items: toolbarItems,
          currentIndex: 1,
        )
        ,
      )
    );
  }
}


