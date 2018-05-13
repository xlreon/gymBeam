import 'package:flutter/material.dart';
import '../components/PayBanner.dart';


class PayScreen extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return new Container(
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
      );
  }
}