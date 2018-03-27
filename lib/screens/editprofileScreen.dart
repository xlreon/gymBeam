import 'package:flutter/material.dart';
import 'dart:async';

class EditProfileScreen extends StatefulWidget {
  @override
  EditProfileScreenState createState() => new EditProfileScreenState();
}

class EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _phoneController = new TextEditingController();
  int _gender = 0;
  DateTime _date = new DateTime.now();
  String new_date = "Date of Birth";
  Color date_color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.close),
          tooltip: 'Discard Changes',
          onPressed: () => showAlert(),
        ),
        title: new Text('Edit Profile'),
        centerTitle: false,
        actions: <Widget>[
          new FlatButton(
            child: new Text("SAVE",style: new TextStyle(color: Colors.white),),
            onPressed: () => saveDetails(),
          ),
        ],
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.symmetric(vertical: 20.0),
              child: new Center(
                child: new Container(
                  width: 100.0, height: 100.0,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage("assets/images/rohan.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                    boxShadow: <BoxShadow>[
                      new BoxShadow(
                          color: Colors.black26, blurRadius: 5.0, spreadRadius: 1.0),
                    ],
                  ),
                  child: new Container(
                    alignment: AlignmentDirectional.bottomEnd,
                    // child: new Text("edit",style: new TextStyle(color: Colors.white),)
                    child: new CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20.0,
                      child: new IconButton(
                        icon: new Icon(Icons.edit),
                        color: Colors.blue,
                        onPressed: () => editProfileIcon(),
                      ),
                    ),
                  ),
                  
                ),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 30.0),
              child: new Column(
                children: <Widget>[
                  new Container(
                    margin: new EdgeInsets.symmetric(vertical: 10.0),
                    child: new TextField(
                      autofocus: true,
                      decoration: new InputDecoration(hintText: "Name"),
                      controller: _nameController,
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.symmetric(vertical: 10.0),
                    child: new TextField(
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(hintText: "Phone"),
                      controller: _phoneController,
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.symmetric(vertical: 10.0),
                    child: new Row(
                      children: <Widget>[
                        new Text("Male",style: new TextStyle(fontSize: 20.0),),
                        new Radio(value: 0,groupValue: _gender,onChanged: (int value){onChanged(value);},),
                        new Text("Female",style: new TextStyle(fontSize: 20.0),),
                        new Radio(value: 1,groupValue: _gender,onChanged: (int value){onChanged(value);},),
                      ],
                    ),
                  ),
                  new Container(
                    margin: new EdgeInsets.symmetric(vertical: 10.0),
                    child: new Column(
                      children: <Widget>[
                        // new Text("Date of Birth: ",style: new TextStyle(fontSize: 20.0),),
                        // new RaisedButton(
                        //   child: new Text("Select Date"),
                        //   onPressed: () => datePicker(context),
                        // )
                        new Container(
                          alignment: Alignment.centerLeft,
                          child: new GestureDetector(
                            child: new Text(new_date,style: new TextStyle(fontSize: 15.0,color: date_color),),
                            onTap: () => datePicker(context),
                          ),
                        ),
                        new Divider(color: Colors.black,),
                      ],
                    )
                  ),
                ],
              )
            )
          ],
        ),
      ),
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

  void onChanged(int value)
  {
    setState(()
    {
      _gender = value;
    });
  }

  void editProfileIcon()
  {
    print("Edit icon pressed");
  }

  void showAlert()
  {
    AlertDialog dialog = new AlertDialog(
      title: new Text('Discard Changes?'),
      actions: <Widget>[
        new FlatButton(
          child: new Text('Discard'),
          onPressed: () {
            Navigator.pop(context);
            Navigator.of(context).pop();
          },
        ),
        new FlatButton(
          child: new Text('Cancel'),
          onPressed: () {
            print("Cancelled");
            Navigator.pop(context);
          },
        ),
      ],
    );

    //SHOW DIALOG
    showDialog(context: context,child: dialog);
  }
  
  void saveDetails()
  {
    print("Save Button Pressed");
    Navigator.of(context).pop();
  }

}