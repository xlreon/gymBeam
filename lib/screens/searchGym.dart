import 'package:flutter/material.dart';
import '../components/mapView.dart';
import '../components/searchBarGym.dart';
import '../api/google-maps.dart';
import 'dart:async';

class SearchGym extends StatefulWidget {
  @override
  SearchGymState createState() => new SearchGymState();
}

class SearchGymState extends State<SearchGym> {
  SearchBar searchBar;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    void onSubmitted(String value) {
      Future<List> response =
      new GoogleMap(location: value).getLatLon();
      response.then((val) {
        print(val);
      });
  }

  SearchGymState() {
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
      body: new MapView(),
    );
  }
}