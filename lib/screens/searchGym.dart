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

  SearchGymState() {
    searchBar = new SearchBar(
        inBar: false,
        buildDefaultAppBar: null,
        setState: setState,
        onSubmitted: onSubmitted);
  }

  var currentMap = new MapView(latlng: [51.5073509, -0.1277583]);
  

  getSearchMap(List result) {
    setState((){
        // print(result);
        currentMap = new MapView(latlng: result);
      }
      );
  }

  void onSubmitted(String value) {
    Future<List> response =
    new GoogleMap(location: value).getLatLon();
    response.then((val) {
      getSearchMap(val);
    });
  }

@override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: searchBar.buildSearchBar(context),
      body: currentMap
    );
  }
}