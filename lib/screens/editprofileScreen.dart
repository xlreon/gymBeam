import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_redux/flutter_redux.dart';
import '../redux/appState.dart';
import '../redux/actions.dart';
import '../variables.dart' as variables;


class EditProfileScreen extends StatelessWidget{
  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _phoneController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
          store: store,
          child: new Scaffold(
        appBar: new AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.close),
            tooltip: 'Discard Changes',
            onPressed: () => showAlert(context),
          ),
          title: new Text('Edit Profile'),
          centerTitle: false,
          actions: <Widget>[
            new FlatButton(
              child: new Text("SAVE",style: new TextStyle(color: Colors.white),),
              onPressed: () => saveDetails(context),
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
                          image: new NetworkImage(store.state.user.photoUrl),
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
                        decoration: new InputDecoration(hintText: store.state.user.displayName),
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
                          new StoreConnector(
                            converter: (store){
                              return (int value){
                                onChanged(value);
                                store.dispatch(Actions.ChangeGender);
                              };
                            },
                            builder:(context,callback)=> new Radio(value: 0,groupValue: variables.gender,onChanged: callback,)),
                          new Text("Female",style: new TextStyle(fontSize: 20.0),),
                          new StoreConnector(
                            converter: (store){
                              return (int value){
                                onChanged(value);
                                store.dispatch(Actions.ChangeGender);
                              };
                            },
                            builder:(context,callback)=> new Radio(value: 1,groupValue: variables.gender,onChanged: callback,)),
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
                            child: new StoreConnector(
                              converter: (store){
                                return (){
                                  store.dispatch(Actions.DateOfBirth);
                                };
                              },
                              builder:(context,callback)=> new GestureDetector(
                                child: new Text(variables.new_date,style: new TextStyle(fontSize: 15.0,color: variables.date_color),),
                                onTap: (){
                                  datePicker(context);
                                  callback();
                                }),
                              ),
                            ),
                          new Divider(color: Colors.black,),
                        ],
                      ),
                      )
                  ],
                    ),
                )
            ],
              )
          ),
        ),
    );
  }

  Future<Null> datePicker(BuildContext context) async
  {
    print("DatePicker");
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: variables.date,
      firstDate: new DateTime(1960),
      lastDate: new DateTime(2019),
    );

    if (picked != null && picked != variables.date)
    {
      print("Date selected : " + variables.date.toString());
        variables.new_date = picked.toString().split(" ")[0];
        variables.date_color = Colors.black;
    }
    else
    {
      print("useless");
    }
  }

  void onChanged(int value)
  {
      variables.gender = value;
  }

  void editProfileIcon()
  {
    print("Edit icon pressed");
  }

  void showAlert(BuildContext context)
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
  
  void saveDetails(BuildContext context)
  {
    print("Save Button Pressed");
    Navigator.of(context).pop();
  }

}