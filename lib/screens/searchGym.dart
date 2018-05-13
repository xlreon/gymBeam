import 'package:flutter/material.dart';
// import '../components/mapView.dart';
import '../components/searchBarGym.dart';

class SearchGym extends StatelessWidget {
  SearchBar searchBar;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    void onSubmitted(String value) {
      print(value);
  }

  SearchGym() {
    searchBar = new SearchBar(
        inBar: false,
        buildDefaultAppBar: null,
        onSubmitted: onSubmitted);
  }
@override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: searchBar.buildSearchBar(context),
      // body: new MapView(),
    );
  }
}