import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  SearchScreenState createState() => new SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
            child: new Text('Search Screen')
        )
    );
  }
}