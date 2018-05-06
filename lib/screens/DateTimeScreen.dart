import 'package:flutter/material.dart';
import 'dart:async';
import 'amountScreen.dart';

class DateTimeScreen extends StatefulWidget {

  DateTimeScreen({this.sessions});
  final int sessions;

  @override
  DateTimeScreenState createState() => new DateTimeScreenState();
}

class DateTimeScreenState extends State<DateTimeScreen> {

@override
  Widget build(BuildContext context) {
    // print (plan);
    return Scaffold(
      appBar: new AppBar(
        // title: new Text("Enter Details",style: new TextStyle(color: Colors.black),),
        // centerTitle: false,
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back,
          ),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop()
        ),
        backgroundColor: Colors.white,
        elevation: 8.0,
      ),
      body: new Column(
        children: <Widget>[
          new Expanded(
            child: new ListView.builder(
              itemBuilder: _itemBuilder,
              itemCount: widget.sessions,
            ),
          ),
          new Container(
            margin: new EdgeInsets.symmetric(vertical:10.0),
            child: new Center(
              // margin: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), 
              child: new RaisedButton(
                child: new Text("Proceed", style: new TextStyle(fontSize: 25.0,color: Colors.white),),
                color: Colors.black,
                padding: new EdgeInsets.symmetric(horizontal:40.0, vertical: 10.0),
                onPressed: () => _proceedButton(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {

    return new SessionCard(index: index+1);
  }

  void _proceedButton()
  {
    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => new AmountScreen(),
      ),
    );
  }

}

class SessionCard extends StatefulWidget
{
  SessionCard({this.index});
  final int index;

  @override
  SessionCardState createState() => new SessionCardState();
}

class SessionCardState extends State<SessionCard>
{
  DateTime _date = new DateTime.now();
  String new_date = "Select Date";
  Color date_color = Colors.grey;

  TimeOfDay _time = new TimeOfDay.now();
  String new_time = "Select Time";
  Color time_color = Colors.grey;

  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _phoneController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return new Card(
      margin: new EdgeInsets.symmetric(horizontal:10.0,vertical: 10.0),
      elevation: 8.0,
      child: new Container(
        height: 170.0,
        margin: new EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new Container(
              alignment: Alignment.centerLeft,
              margin: new EdgeInsets.only(bottom: 5.0),
              child: new Text("Session "+ widget.index.toString(),style: new TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 10.0),
              child: new Column(
                children: <Widget>[
                  new Container(
                    alignment: Alignment.centerLeft,
                    child: new GestureDetector(
                      child: new Text(new_date,style: new TextStyle(fontSize: 20.0,color: date_color),),
                      onTap: () => datePicker(context),
                    ),
                  ),
                  new Divider(color: Colors.black,),
                  new Padding(
                    padding: new EdgeInsets.symmetric(vertical: 5.0),
                  ),
                  new Container(
                    alignment: Alignment.centerLeft,
                    child: new GestureDetector(
                      child: new Text(new_time,style: new TextStyle(fontSize: 20.0,color: time_color),),
                      onTap: () => timePicker(context),
                    ),
                  ),
                  new Divider(color: Colors.black,),
                  new Container(
                    alignment: Alignment.centerLeft,
                    child: new Text("* Max Workout Time : 2 hours",style: new TextStyle(color: Colors.grey),),
                  )
                  
                  // new Padding(
                  //   padding: new EdgeInsets.symmetric(vertical: 5.0),
                  // ),
                  // new Container(
                  //   alignment: Alignment.centerLeft,
                  //   child: new GestureDetector(
                  //     child: new Text(new_time,style: new TextStyle(fontSize: 20.0,color: time_color),),
                  //     onTap: () => timePicker(context),
                  //   ),
                  // ),
                  // new Divider(color: Colors.black,),
                ],
              )
            ),
          ],
        ),
      )
      
    );
  }

  Future<Null> datePicker(BuildContext context) async
  {
    print("DatePicker");
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: new DateTime(1960),
      lastDate: new DateTime(2019),
    );

    if (picked != null && picked != _date)
    {
      print("Date selected : " + _date.toString());
      setState((){
        new_date = picked.toString().split(" ")[0];
        date_color = Colors.black;
      });
    }
    else
    {
      print("useless");
    }
  }

  Future<Null> timePicker(BuildContext context) async
  {
    print("TimePicker");
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _time,
      // firstDate: new DateTime(1960),
      // lastDate: new DateTime(2019),
    );

    if (picked != null && picked != _time)
    {
      print("Time selected : " + _time.format(context));
      setState((){
        new_time = picked.format(context);
        time_color = Colors.black;
      });
    }
    else
    {
      print("useless");
    }
  }
}