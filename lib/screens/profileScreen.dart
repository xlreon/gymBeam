import 'package:flutter/material.dart';
import '../redux/appState.dart';
import '../redux/actions.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../variables.dart' as variables;


class ProfileScreen extends StatelessWidget {
  
  var account=[false,false,false];
  var other=[false,false];

@override
  Widget build(BuildContext context) {
  print(store.state.user);
    return new Scaffold(
      body: new Container(
        padding: new EdgeInsets.symmetric(horizontal:10.0),
        child: new ListView(
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.only(top:20.0),
              child: new Row(
                children: <Widget>[
                  new Container(
                    width: 80.0, height: 80.0,
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: new NetworkImage(store.state.user.photoUrl),
                          fit: BoxFit.cover),
                      borderRadius: new BorderRadius.all(new Radius.circular(40.0)),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                            color: Colors.black26, blurRadius: 5.0, spreadRadius: 1.0),
                      ],
                    ),
                  ),
                  new Expanded(
                    child: new Container(
                      // alignment: Alignment.centerLeft,
                      padding: new EdgeInsets.only(left: 10.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(store.state.user.displayName,style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700),textAlign: TextAlign.left,),
                          new Text(store.state.user.email,style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                          new Container(
                            alignment: Alignment.centerLeft,
                            child: new Text("9853355155",style: new TextStyle(fontSize: 15.0,fontWeight: FontWeight.w400)),
                          )
                          
                        ],
                      ),
                    ),
                  ),
                  new Container(
                    width: 40.0,
                    child: new FlatButton(
                      child: new Icon(Icons.edit),
                      onPressed: () => Navigator.of(context).pushNamed('/profile/edit'),
                    ),
                  )
                  
                ],
              ),
            ),
            new Container(
              child: new Divider(color: Colors.black,height: 25.0,),
            ),
            new Container(
              margin: new EdgeInsets.only(bottom:10.0),
              alignment: Alignment.centerLeft,
              child: new Text("Account",style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700)),
            ),
            new Container(
              child: new StoreConnector<dynamic,dynamic>(
            converter: (store) {
              return (int index, bool isExpanded)
              { 
                variables.account[index] = !isExpanded;
                store.dispatch(Actions.ExpandPanel);
              };
            },
            builder: (context,callback) => new ExpansionPanelList(
                expansionCallback: callback,
                children: [
                  new ExpansionPanel(
                    body: new Center(child: new Text("Wishlist"),),
                    isExpanded: variables.account[0],
                    headerBuilder: (BuildContext context,bool isExpanded) => _buildExpansion("Bookings", Icons.bookmark_border,isExpanded),
                  ),
                  new ExpansionPanel(
                    body: new Center(child: new Text("Wishlist"),),
                    isExpanded: variables.account[1],
                    headerBuilder: (BuildContext context,bool isExpanded) => _buildExpansion("Wishlist", Icons.favorite_border,isExpanded),
                  ),
                  new ExpansionPanel(
                    body: new Center(child: new Text("Wishlist"),),
                    isExpanded: variables.account[2],
                    headerBuilder: (BuildContext context,bool isExpanded) => _buildExpansion("Wallet", Icons.account_balance_wallet,isExpanded),
                  )
                ],
              )
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(vertical:10.0),
              alignment: Alignment.centerLeft,
              child: new Text("Help",style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700)),
            ),
            new Container(
              // padding: new EdgeInsets.symmetric(vertical: 10.0),
              child: new StoreConnector<dynamic,dynamic>(
            converter: (store) {
              return (int index, bool isExpanded)
              { 
                variables.other[index] = !isExpanded;
                store.dispatch(Actions.ExpandPanel);
              };
            },
            builder: (context,callback) => new ExpansionPanelList(
                expansionCallback: callback,
                children: [
                  new ExpansionPanel(
                    body: new Center(child: new Text("Wishlist"),),
                    isExpanded: variables.other[0],
                    headerBuilder: (BuildContext context,bool isExpanded) => _buildExpansion("Help & Support", Icons.help_outline,isExpanded),
                  ),
                  new ExpansionPanel(
                    body: new Center(child: new Text("Wishlist"),),
                    isExpanded: variables.other[1],
                    headerBuilder: (BuildContext context,bool isExpanded) => _buildExpansion("Refer & Earn", Icons.share,isExpanded),
                  ),
                ],
              ),
            )
            ),
            new Center(
              child: new Container(
                padding: new EdgeInsets.only(top:20.0),
                width: 200.0,
                child: new StoreConnector<dynamic,VoidCallback>(
            converter: (store) {
              return ()
              { 
                store.dispatch(Actions.Logout);
              };
            },
            builder: (context,callback)=>new RaisedButton(
                  child: new Text("Logout",style: new TextStyle(fontSize: 20.0,color: Colors.white),),
                  color: Colors.black,
                  onPressed: callback
                )
              )
              )
            )
          ],
        )
      ),
    );
  }

  Widget _buildExpansion(text,icon,isExpanded)
  {
    return new Container(
      height: 100.0,
      child: new Row(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.symmetric(horizontal: 10.0),
            child:new Icon(icon,
              // color: Colors.red,
            ),
          ),
          new Expanded(
            child: new Text(text, style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
          ),
          // new Icon(Icons.arrow_forward_ios)
        ],
      )
    );
  }
}

class ProfileCards extends StatelessWidget
{
  ProfileCards({this.text,this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return new Container(
      width: screenWidth-10,
      height: 80.0,
      child: new Column(
        children: <Widget>[
          new Expanded(
            // elevation: 8.0,
            // margin: new EdgeInsets.all(0.0),
            child: new Row(
              children: <Widget>[
                new Container(
                  padding: new EdgeInsets.symmetric(horizontal: 10.0),
                  child:new Icon(icon,
                    // color: Colors.red,
                  ),
                ),
                new Expanded(
                  child: new Text(text, style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                ),
                new Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
          new Divider(color: Colors.black,height: 20.0)
        ],
      )
      
    );
  }
}