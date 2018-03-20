import 'package:flutter/material.dart';

class PayScreen extends StatefulWidget {
  @override
  PayScreenState createState() => new PayScreenState();
}

class PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Pay'),
        ),
        body: new Center(
            child: new Text('Pay Screen')
        )
    );
  }
}