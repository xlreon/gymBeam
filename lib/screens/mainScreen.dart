import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../redux/appState.dart';
import '../redux/actions.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../variables.dart' as variables;
class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
          store: store,
          child: new Scaffold(
          body: store.state.currentScreen,
          bottomNavigationBar: Theme.of(context).platform == TargetPlatform.iOS
          ? // IOS theme for toolbar
            new StoreConnector<dynamic,dynamic>(
            converter: (store) {
              return (int index)
              { 
                variables.index=index;
                store.dispatch(Actions.ChangeScreen);
              };
            },
            builder: (context,callback) => new CupertinoTabBar(
            key: new Key("toolbar"),
            // Toolbar menu items
            items: variables.toolbarItems,
            currentIndex: variables.index,
            onTap: callback,
            )
          )
          : // Android theme for toolbar
          new StoreConnector<dynamic,dynamic>(
            converter: (store) {
              return (int index)=> store.dispatch(Actions.ChangeScreen);
            },
            builder: (context,callback) => new BottomNavigationBar(
            key: new Key("toolbar"),
            // Toolbar menu items
            items: variables.toolbarItems,
            currentIndex: variables.index,
            onTap: callback,
          )
          ,
      )
      ),
    );
  }
}




