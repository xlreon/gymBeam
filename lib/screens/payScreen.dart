import 'package:flutter/material.dart';
import '../components/PayBanner.dart';
class PayScreen extends StatefulWidget {
  @override
  PayScreenState createState() => new PayScreenState();
}

class PayScreenState extends State<PayScreen> {
@override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Column(
          children: <Widget>[
            new BannerComponent(),
            new Flexible(
              child: new Center(
                child: new Text("Pay Screen"),
              ),
            )
          ],
        )
      ),
    );
  }
}