import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './homeScreen.dart';
import './searchScreen.dart';
import './payScreen.dart';
class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => new MainScreenState();
}


class MainScreenState extends State<MainScreen> {
    // Current screen position
    int screenIndex = 0;
    
    final List screens = [
      new HomeScreen(),
      new SearchScreen(),
      new PayScreen(),
    ];

    // Current screen to show
    var currentScreen = new HomeScreen();

    // Array of toolbar items
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

  // function to handle on tap of toolbar items
  void _changeScreen(int index) {
    setState(()  {
      screenIndex = index;
    }
    );
    // change state of currently showing screen on tap on toolbar items
    switch(index) {
      case 0: currentScreen = screens[0];
      break;
      case 1: currentScreen = screens[1];
      break;
      case 2: currentScreen = screens[2];
      break;
    }
    
  }

  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Scaffold(
        body: currentScreen,
        bottomNavigationBar: Theme.of(context).platform == TargetPlatform.iOS
        ? // IOS theme for toolbar
          new CupertinoTabBar(
          key: new Key("toolbar"),
          // Toolbar menu items
          items: toolbarItems,
          currentIndex: screenIndex,
          onTap: _changeScreen,
        )
        : // Android theme for toolbar
          new BottomNavigationBar(
          key: new Key("toolbar"),
          // Toolbar menu items
          items: toolbarItems,
          currentIndex: screenIndex,
          onTap: _changeScreen,
        )
        ,
      )
    );
  }
}


