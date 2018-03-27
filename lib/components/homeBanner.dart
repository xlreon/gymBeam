import 'package:flutter/material.dart';
import '../components/resources/BannerColors.dart';
import '../components/searchComponent.dart';

class BannerComponent extends StatefulWidget {
  @override
  BannerState createState() => new BannerState();
}

class BannerState extends State<BannerComponent> {
  final TextEditingController _textController = new TextEditingController();

@override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery
        .of(context)
        .padding
        .top;
        
    const headerHeight = 290.0;

    return new Container(
      height: headerHeight,
      decoration: new BoxDecoration(
        color: BannerColors.primaryColor,
        boxShadow: <BoxShadow>[
          new BoxShadow(spreadRadius: 2.0,
              blurRadius: 4.0,
              offset: new Offset(0.0, 1.0),
              color: Colors.black38),
        ],
      ),
      child: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // linear gradient
          new Container(
            height: headerHeight,
            decoration: new BoxDecoration(
              gradient: new LinearGradient(
                  colors: <Color>[ //7928D1
                    const Color.fromRGBO(58, 159, 229, 1.0), const Color.fromRGBO(97, 178, 229, 1.0)],
                  stops: <double>[0.3, 0.5],
                  begin: Alignment.topRight, end: Alignment.bottomLeft
              ),
            ),
          ),
          // radial gradient
          new CustomPaint(
            painter: new HeaderGradientPainter(),
          ),
          // new Container(
          //   child: new Image.asset("assets/images/1.jpg"),
          // ),
          new Padding(
            padding: new EdgeInsets.only(
                top: topPadding, left: 15.0, right: 15.0, bottom: 20.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[                
                _buildProfileIcon(),
                new SearchComponent()
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Build the bell icon at the top right corner of the header
  Widget _buildProfileIcon() {
    return new Row(
      children: <Widget>[
        new Expanded(
          child: new Container(
            // alignment: AlignmentDirectional.topStart,
            margin: new EdgeInsets.only(top: 10.0, left: 10.0),
            child: new Text("Gym Beam",style: new TextStyle(
              // fontStyle: FontStyle.italic,
              // decorationStyle: TextDecorationStyle.wavy,
              // color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 45.0),
            ),
          ),
        ),
        new Container(
          margin: new EdgeInsets.only(top: 10.0, right: 10.0),
          alignment: AlignmentDirectional.topEnd,
          child:new IconButton(
            icon: new Icon(
              Icons.perm_identity, color: Colors.white, size: 30.0,),
            onPressed: () => Navigator.of(context).pushNamed('/profile')
          ),
        ),
      ],
    );
  }
}

class HeaderGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: paint background radial gradient
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

}