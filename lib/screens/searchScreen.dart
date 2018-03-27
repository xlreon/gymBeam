import 'package:flutter/material.dart';
import '../components/searchBar.dart';

class SearchScreen extends StatefulWidget {
  @override
  SearchScreenState createState() => new SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  
  SearchBar searchBar;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  AppBar buildAppBar(BuildContext context) {
  return new AppBar(
      title: new Text('Search Bar Demo'),
      actions: [searchBar.getSearchAction(context)]);
  }

    void onSubmitted(String value) {
    setState(() => _scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text('You wrote $value!'))));
  }

  SearchScreenState() {
    searchBar = new SearchBar(
        inBar: false,
        buildDefaultAppBar: null,
        setState: setState,
        onSubmitted: onSubmitted);
  }

@override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: searchBar.buildSearchBar(context),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Flexible(
              child: new Center(
                child: new Text("Search Screen"),
              ),
            )
          ],
        )
      ),
    );
  }
}