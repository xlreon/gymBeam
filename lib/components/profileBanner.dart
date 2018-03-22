import 'package:flutter/material.dart';
import '../components/resources/BannerColors.dart';

class ProfileBanner extends StatefulWidget {
  @override
  ProfileBannerState createState() => new ProfileBannerState();
}

class ProfileBannerState extends State<ProfileBanner> {
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
          new Padding(
            padding: new EdgeInsets.only(
                top: topPadding, left: 15.0, right: 15.0, bottom: 20.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildBackIcon(),
              ],
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 60.0),
            child: new Container(                                              
              margin: const EdgeInsets.all(10.0),
              child: new Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(  
                    // margin: const EdgeInsets.only(top: 30.0,bottom: 10.0),
                    child: new Center(
                      // child: new CircleAvatar(
                      //   // child: new Text("R",textScaleFactor: 3.0,),
                      //   child: new Image.asset('../assets/rohan.jpg',fit: BoxFit.cover,),
                      //   radius: 50.0,
                      // ),
                      child: new Container(
                        width: 100.0, height: 100.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                              image: new AssetImage("assets/images/rohan.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: new BorderRadius.all(new Radius.circular(40.0)),
                          boxShadow: <BoxShadow>[
                            new BoxShadow(
                                color: Colors.black26, blurRadius: 5.0, spreadRadius: 1.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                  new Text("Rohan Panda",style: new TextStyle(fontSize: 32.0,fontWeight: FontWeight.w700)),
                  new Text("rohan.panda1@gmail.com",style: new TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400)),
                  new Text("9853355155",style: new TextStyle(fontSize: 16.0,fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Build the bell icon at the top right corner of the header
  Widget _buildBackIcon() {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new IconButton(
            icon: new Icon(
              Icons.arrow_back_ios, color: Colors.white, size: 30.0,),
            onPressed: () => Navigator.of(context).pop()),
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